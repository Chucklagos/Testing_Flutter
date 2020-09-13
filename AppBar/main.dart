import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget{
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Campos de Texto"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
    throw UnimplementedError();
  }
}
