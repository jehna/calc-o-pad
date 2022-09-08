import 'package:calc_o_pad/evaluate_to_number.dart';
import 'package:calc_o_pad/parse.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  String _debug = "";

  // rerender on text change
  void _onTextChanged() {
    setState(() {
      try {
        if (textEditController.text.isEmpty) {
          _result = "";
          _debug = "";
        } else {
          _debug = parse(textEditController.text).toString();
          _result = evaluateToNumber(parse(textEditController.text)).toString();
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  TextField(
                    controller: textEditController,
                    maxLines: 5,
                    style: const TextStyle(
                        height: 3,
                        leadingDistribution:
                            TextLeadingDistribution.proportional),
                  ),
                  Text('Output: $_result'),
                  const SizedBox(height: 20),
                  Text('Debug: $_debug'),
                ]))
          ],
        ),
      ),
    );
  }
}
