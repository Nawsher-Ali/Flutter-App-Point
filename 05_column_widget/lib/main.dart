import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Column Widget Demo',
      home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
@override
build(BuildContext context){
  return Scaffold(

    appBar: AppBar(
      title:Text('This is column widget',style: TextStyle(color:Colors.white),),
      backgroundColor:Colors.indigo[900],
    ),

    body:Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 150,
            width: 300,
            color:Colors.pink[900],
            child:Icon(Icons.access_time,size:100,color:Colors.white)
          ),
          Container(
            margin:EdgeInsets.only(bottom:10),
            height: 150,
            width:300,
            color:Colors.pink[900],
            child:Icon(Icons.group_work,size:100,color:Colors.white)
          ),
          Container(
            height: 150,
            width:300,
            color:Colors.pink[900],
            child:Icon(Icons.access_alarm,size:100,color:Colors.white)
          ),
          
        ],
      ),
    )

  );
}
}