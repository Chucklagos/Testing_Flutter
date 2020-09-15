import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  String inputValue = "";

  final TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void onSubmitted(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Titulo de la barra superior"),
        backgroundColor: Colors.indigo,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Ingrese el texto"),
                onSubmitted: (String value) {
                  onSubmitted(value);
                },
                controller: controller,
              ),
              new Text(inputValue)
            ],
          ),
        ),
      ),
    );
  }
}
