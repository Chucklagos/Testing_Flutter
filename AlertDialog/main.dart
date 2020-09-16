import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  String _inputValue = "";

  void _showAlert(String value) {
    /* Al declarar algo incialmente con un guion bajo indicamos a que es solo accesible a lo que pertenece a la clase donde esta */
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
    );

    showDialog(context: context, child: dialog);
  }

  void _onChanged(String value) {
    setState(() {
      _inputValue = value;
    });
  }

/* ------------------------------------------------------- */
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

/* --------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Ejemplo de Alet Dialog"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: InputDecoration(hintText: "Ingrese un Texto"),
                onChanged: (String value) {
                  _onChanged(value);
                },
              ),
              new RaisedButton(
                  child: new Text("Lanzar Alerta"),
                  onPressed: () {
                    _showAlert(_inputValue);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
