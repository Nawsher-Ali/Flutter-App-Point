import 'package:flutter/material.dart';

class ActionButtonShow extends StatelessWidget{

  String _whatToDoButton = 'A floating action button is a circular icon button.Use at most a single floating action button per screen. Floating action buttons should be used for positive actions such as "create", "share", or "navigate".';
 
  @override
  build(BuildContext context){
    return Container(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[

           Padding(
                padding: EdgeInsets.only(left:10,top:10,right: 10,bottom: 100),
                child: Text(_whatToDoButton,style:TextStyle(fontSize: 15))
              ),

           Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              
              FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.create),
                backgroundColor: Colors.deepPurpleAccent,
              ),
            ],
           ),//Row
            
          ]
        ),//Column
      )//Center
    );//Container
  }// build method end
  
}
