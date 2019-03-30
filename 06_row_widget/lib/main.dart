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
        child:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                margin: EdgeInsets.only(right: 7),
                color: Colors.blue[500],
                height:300,
                width:100,
                child:Icon(Icons.laptop_windows,size:50,color:Colors.white)
              ),
              Container(
                margin: EdgeInsets.only(right: 7),
                color: Colors.blue[500],
                height:300,
                width:100,
                child:Icon(Icons.favorite_border,size:50,color:Colors.white)
              ),
              Container(
                color: Colors.blue[500],
                height:300,
                width:100,
                child:Icon(Icons.person_pin_circle,size:50,color:Colors.white)
              )
            ]
          ),
        )
      )
    );
  }
}