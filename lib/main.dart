import 'package:calc_o_pad/environment.dart';
import 'package:calc_o_pad/pretty.dart';
import 'package:calc_o_pad/reduce.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calc-O-Pad',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Roboto'),
      home: const MyHomePage(title: 'Calc-O-Pad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textEditController = TextEditingController(text: "1 + 1");
  String _result = "2.0";

  // rerender on text change
  void _onTextChanged() {
    setState(() {
      try {
        if (textEditController.text.isEmpty) {
          _result = "";
        } else {
          final env = Environment.fromString(textEditController.text);
          _result = prettyPrint(reduce(env));
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
