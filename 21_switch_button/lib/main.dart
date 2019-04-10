import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'Switch Button Demo',
      home:MyApp(),
      debugShowCheckedModeBanner:false,
    )
  );
}

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp>{

  Color appBarColor = Colors.deepOrange;
  Color backgroundColor = Colors.white;
  bool isSwitched = false;
  String str = 'OFF';


  @override
  build(BuildContext context){

    return Scaffold(

      appBar:AppBar(
        title:Text('Exploring Switch Button'),
        backgroundColor:appBarColor,
      ),

      body:Container(
        color: backgroundColor,
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Switch(
                value: isSwitched,
                activeColor: Colors.deepPurpleAccent[400],
                onChanged: (value){

                  isSwitched = value;
                  isSwitched == true ? str = "ON":str = "OFF";
                  // setTheme();
                  str == "ON" ? setTheme():setDefault();
                },
              ),//Switch

              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'My Theme : $str',
                  style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)
                )
              ),//Padding

            ],
          )//Column
        )//Center
      )//Container
    );//Scaffold

  }//build method end


  // this method is used for change theme
  setTheme(){
    setState((){
      appBarColor = Colors.deepPurple;
      backgroundColor = Colors.teal[400];
    });
  }


  // this method is used for set default theme
  setDefault(){
    setState((){
      appBarColor = Colors.deepOrange;
      backgroundColor = Colors.white;
    });
  }


}
