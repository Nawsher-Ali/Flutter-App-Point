import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(title:Text('I am appBar'),backgroundColor: Colors.blue[900],),
        body:Center(
          child: Text(
            'Hello I am body',
            style: TextStyle(fontSize: 45,color:Colors.white),
          ),
        )
      )
    )
  );
}