import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: myApp(),
  ));
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){ //este metodo escribe todos los widgets que estemos creando
    return new Scaffold( //Scaffold nos da un esquema basico en una aplicacion
       appBar: new AppBar(
         title: new Text("Stateless Widget"),
       ),
      body: new Container(
        child: Center(
        child: new Column( //Esta propiedad child permite ir anidando widgets al widget principal
          children: <Widget>[
            new MyCard(title: new Text("I Love Flutter", style: new TextStyle(fontSize:30, color: Colors.grey ),), icon: new Icon(Icons.favorite, size: 35,color: Colors.red,),),
            new MyCard(title: new Text("I Like Dart" , style: new TextStyle(fontSize:30, color: Colors.grey),),icon: new Icon(Icons.thumb_up, size: 35,color: Colors.blue,),)
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
        )
      ),
    );
  }
}

class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon}); //constructor

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
child: new Card(
  child: new Container(
    padding: const EdgeInsets.all(20.0),
  child: Column(
    children: <Widget>[this.title, this.icon],
  ),
),
)
    );
  }
}