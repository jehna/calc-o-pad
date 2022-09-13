import 'package:calc_o_pad/environment.dart';
import 'package:calc_o_pad/firebase.dart';
import 'package:calc_o_pad/parse.dart';
import 'package:calc_o_pad/pretty.dart';
import 'package:calc_o_pad/reduce.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final textEditController = TextEditingController(text: "");
  String _result = "";
  List<String> _autofillHints = [];
  late DocumentReference<Map<String, dynamic>>? _doc;

  // rerender on text change
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
          _doc?.set({'text': textEditController.text});
        }
      } catch (e) {
        // ignore
      }
    });
  }

  @override
  void initState() {
    super.initState();
    textEditController.addListener(_onTextChanged);
    _loadContent();
  }

  Future _loadContent() async {
    _doc = await getDocument();
    final data = await _doc!.get();
    if (data.exists) {
      textEditController.text = data.data()!['text'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const TextField(
                      maxLines: 1,
                      style: TextStyle(fontSize: 22),
                      decoration: InputDecoration(
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
