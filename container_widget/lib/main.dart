import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('I am appBar'),backgroundColor: Colors.blue[900],),
      body:Container(
        child: Center(
          child: Icon(
            Icons.directions_car,
            size:100,
            color:Colors.redAccent
          )
        ),
      )
    );
  }
}