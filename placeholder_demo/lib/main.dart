import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'placeholder demo',
      debugShowCheckedModeBanner:false,
      home:MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{

  @override
  build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title:Text('Placeholder Widget'),
        backgroundColor:Color(0xFF0A3D62)
      ),

      body:Placeholder(
        color:Colors.redAccent,
        // fallbackHeight: 200,
        // fallbackWidth: 200,
        strokeWidth:10
      )

    );  
  }
}