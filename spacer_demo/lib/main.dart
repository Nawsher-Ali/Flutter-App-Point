import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      title:'Spacer Widget',
      debugShowCheckedModeBanner:false,
      home:MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{

  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Spacer Widget'),
        backgroundColor: Color(0xFFAE1438),
      ),

      body:Center(
        child: Row(
          children: <Widget>[

            Text('one',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)
            ),

            Spacer(
              flex:3
            ),

            Text('two',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),

            Spacer(
              flex:1
            ),

            Text('three',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
            
          ],
        ),
      )
    );  
  }
}