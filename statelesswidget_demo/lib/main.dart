import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'StatelessWidget Demo',
      home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title:Text('Flutter Is Awesome',
         style:TextStyle(color:Colors.white)
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body:Center(
        child: Container(
          height: 400,
          width:300,
          color:Colors.indigo[900],
          child:Icon(Icons.laptop_mac,size:100,color:Colors.redAccent)
        ),
      )
    );
  }
}