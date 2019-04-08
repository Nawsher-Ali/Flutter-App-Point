import 'package:flutter/material.dart';
import 'package:page_routing/main.dart';

class ThirdPage extends StatelessWidget{

  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Third Page'),
        backgroundColor: Colors.blue[900],
      ),

      body:Container(
        color:Colors.green,
        child:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[

              Icon(Icons.create,size:100,color:Colors.deepOrange[400]),

              Padding(
                padding:EdgeInsets.only(top:30,bottom:30,),
                child: Text(
                  'Welcome to third page',
                  style:TextStyle(fontSize:25,
                  fontWeight: FontWeight.bold)
                )
              ),

              RaisedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                },
                child:Text('BACK TO FIRST PAGE',style:TextStyle(color:Colors.white)),
                color:Colors.deepOrange,
              )
            ]
          )
        )
      )
    );
  }
}