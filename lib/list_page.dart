import 'package:calc_o_pad/firebase.dart';
import 'package:calc_o_pad/note_page.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Note> notes = [];

  @override
  void initState() {
    super.initState();
    _loadContent();
  }

  Future _loadContent() async {
    final newNotes = await getDocuments();
    setState(() {
      notes = newNotes;
    });
  }

  void _openNew() {
    Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (context) => NotePage(
                  note: Note(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      title: "",
                      text: ""),
                )))
        .then((v) => _loadContent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My notes'),
        actions: [IconButton(onPressed: _openNew, icon: const Icon(Icons.add))],
      ),
      body: ListView(
          children: notes
              .map(
                (note) => ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                            builder: (context) => NotePage(note: note)))
                        .then((v) => _loadContent());
                  },
                  title: Text(note.title.isEmpty ? "Untitled" : note.title),
                ),
              )
              .toList()),
    );
  }
}
