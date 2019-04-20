import 'package:flutter/material.dart';
import '../main.dart';
import 'package:data_table/pages/second_page.dart';


class FirstScreen extends StatelessWidget{

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[

                obj1.buildMaterialButton('second step',SecondScreen()),
                Divider(),

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
          //   Row(
          //     children: <Widget>[
          //       RaisedButton(
          //    onPressed:(){},
          //    child: Text('btn1'),
          //    color:Colors.pink[900],
          //    padding: EdgeInsets.all(20),
          //    shape:CircleBorder()
          //  ),

          //  RaisedButton(
          //    onPressed:(){},
          //    child: Text('btn1'),
          //    color:Colors.pink[900],
          //    padding: EdgeInsets.all(20),
          //    shape:CircleBorder()
          //  ),
          //     ],
          //   )
           

          //  RaisedButton(
          //    onPressed:(){},
          //    child: Text('btn1'),
          //    color:Colors.pink[900],
          //    padding: EdgeInsets.all(20),
          //    shape:CircleBorder()
          //  ),

          //  RaisedButton(
          //    onPressed:(){},
          //    child: Text('btn1'),
          //    color:Colors.pink[900],
          //    padding: EdgeInsets.all(20),
          //    shape:CircleBorder()
          //  ),

          //  RaisedButton(
          //    onPressed:(){},
          //    child: Text('btn1'),
          //    color:Colors.pink[900],
          //    padding: EdgeInsets.all(20),
          //    shape:CircleBorder()
          //  ),

           
          ], 
        ),
      ),
    );
  }
}