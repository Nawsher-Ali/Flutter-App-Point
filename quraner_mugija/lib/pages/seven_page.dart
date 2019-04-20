import 'package:flutter/material.dart';
import '../pages/second_page.dart';
import '../main.dart';


class SevenScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

  QuranAppState obj1 = new QuranAppState();

    return Scaffold(
      appBar: AppBar(title:Text('First Item')),

      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[

                obj1.buildMaterialButton('second step',SecondScreen()),
                Divider(
                 
                ),

                obj1.buildMaterialButton('second step',SecondScreen()),
                Divider(),

                obj1.buildMaterialButton('second step',SecondScreen()),
                Divider(),

                obj1.buildMaterialButton('second step',SecondScreen()),
                Divider(),

                obj1.buildMaterialButton('second step',SecondScreen()),
                Divider(),

                obj1.buildMaterialButton('second step',SecondScreen()),

              ]
            ),
          ], 
        ),
      ),
    );
  }
}