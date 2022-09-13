import 'package:calc_o_pad/firebase.dart';
import 'package:calc_o_pad/main.dart';
import 'package:calc_o_pad/note_page.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> with RouteAware {
  List<Note> notes = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void initState() {
    super.initState();
    _loadContent();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPopNext() {
    _loadContent();
  }

  Future _loadContent() async {
    final newNotes = await getDocuments();
    setState(() {
      notes = newNotes;
    });
  }

  void _openNew() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NotePage(
              note: Note(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  title: "",
                  text: ""),
            )));
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotePage(note: note)));
                  },
                  title: Text(note.title.isEmpty ? "Untitled" : note.title),
                ),
              )
              .toList()),
    );
  }
}
