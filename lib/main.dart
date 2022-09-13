import 'package:calc_o_pad/firebase.dart';
import 'package:calc_o_pad/list_page.dart';
import 'package:calc_o_pad/note_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calc-O-Pad',
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Roboto'),
        home: const ListPage(),
        initialRoute: "/new-note",
        routes: {
          "/new-note": (context) => NotePage(
              note: Note(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  title: "",
                  text: "")),
        },
        navigatorObservers: [
          routeObserver
        ]);
  }
}

final RouteObserver<ModalRoute> routeObserver = RouteObserver();
