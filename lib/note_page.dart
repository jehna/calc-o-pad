import 'package:calc_o_pad/environment.dart';
import 'package:calc_o_pad/firebase.dart';
import 'package:calc_o_pad/parse.dart';
import 'package:calc_o_pad/pretty.dart';
import 'package:calc_o_pad/reduce.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  final Note note;
  const NotePage({Key? key, required this.note}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final textEditController = TextEditingController(text: "");
  final titleController = TextEditingController(text: "");
  String _result = "";
  List<String> _autofillHints = [];
  late DocumentReference<Map<String, dynamic>>? _doc;

  Future _setDoc(String documentId) async {
    _doc = await getDocumentReference(documentId);
    _doc!.set({"text": "", "title": ""});
  }

  void _onTextChanged() {
    setState(() {
      try {
        if (textEditController.text.isEmpty) {
          _result = "";
        } else {
          final env = Environment.fromString(textEditController.text);
          _autofillHints =
              env.items.whereType<Variable>().map((item) => item.name).toList();
          _result = prettyPrint(reduce(env));
          _doc?.update({'text': textEditController.text});
        }
      } catch (e) {
        // ignore
      }
    });
  }

  void _onTitleChanged() {
    _doc?.update({'title': titleController.text});
  }

  @override
  void initState() {
    super.initState();
    textEditController.text = widget.note.text;
    titleController.text = widget.note.title;
    _setDoc(widget.note.id);
    textEditController.addListener(_onTextChanged);
    titleController.addListener(_onTitleChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // transparent background
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                      maxLines: 1,
                      style: const TextStyle(fontSize: 22),
                      controller: titleController,
                      decoration: const InputDecoration(
                        hintText: "Title",
                        border: InputBorder.none,
                      )),
                  TextField(
                      controller: textEditController,
                      maxLines: null,
                      minLines: 1,
                      autocorrect: false,
                      autofillHints: _autofillHints,
                      autofocus: true,
                      enableSuggestions: false,
                      style: const TextStyle(
                          leadingDistribution:
                              TextLeadingDistribution.proportional),
                      decoration: const InputDecoration(
                          hintText: "Calculations",
                          border: InputBorder.none,
                          isDense: true)),
                  const SizedBox(height: 5),
                  Text(
                    _result,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.blueAccent),
                  ),
                ])));
  }
}
