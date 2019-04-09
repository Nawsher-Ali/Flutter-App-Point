import 'package:flutter/material.dart';
import './third_page.dart';

class SecondPage extends StatelessWidget{
  
  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Second Page'),
        backgroundColor:Colors.indigo[900],
      ),//AppBar
      
      body:Container(
        color:Colors.teal[400],
        child:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[

              Icon(Icons.free_breakfast,size:100,color:Colors.pink[400]),

              Padding(
                padding:EdgeInsets.only(top:30,bottom:30),
                child: Text(
                  'Welcome to second page',
                  style:TextStyle(
                    fontSize:25,
                    color:Colors.indigo[900],
                    fontWeight: FontWeight.bold)
                )
              ),

              RaisedButton(
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ThirdPage()));
                },
                child:Text('GO TO THIRD PAGE',style:TextStyle(color:Colors.white)),
                color:Colors.deepPurpleAccent,
              )

            ]
          )//Column
        )//Center
      ),//Container of body
      
    );//Scaffold
  }//build method end
  
}
