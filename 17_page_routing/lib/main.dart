import 'package:flutter/material.dart';
import './pages/second_page.dart';

void main(){
  runApp(
    MaterialApp(
      title:'Page Routing in flutter',
      home:MyApp(),
      debugShowCheckedModeBanner:false,
    )
  );
}


class MyApp extends StatelessWidget{
  
  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('First Page'),
        backgroundColor:Colors.deepPurpleAccent,
      ),//AppBar

      
      body:Container(
        color:Colors.teal[400],
        child:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[

              Icon(Icons.directions_car,size:100,color:Colors.white),
              
              //Padding for page title
              Padding(
                padding:EdgeInsets.only(top:30,bottom:30),
                child: Text(
                  'Welcome to first page',
                  style:TextStyle(fontSize:25,
                  fontWeight: FontWeight.bold)
                )
              ),
              
              //Raised Button go ot page
              RaisedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondPage()));
                },
                child:Text(
                  'GO TO SECOND PAGE',
                  style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                ),
                color:Colors.deepPurpleAccent,
              )

            ], 
          )//Column
        ),//Center
      )//Container
    );//Scaffold
  }//build method end
  
}
