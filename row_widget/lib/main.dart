import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Row Widget Demo',
      home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Row Widget Exploring'),
        backgroundColor:Colors.blue[900],
      ),

      body:Center(
        child:Row(
          children:<Widget> [
            
          ]
        )
      )
    );
  }
}