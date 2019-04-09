import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'Radio Button Demo',
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

  Color appBarColor = Colors.deepOrangeAccent;
  Color backgroundColor = Colors.white;

  int groupValue;
  int groupValue1;

  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Exploring Radio Button'),
        backgroundColor: appBarColor,
      ),

      body:Container(
        padding: EdgeInsets.all(15),
        color:backgroundColor,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[
              
              // setting appBar color
              Column(
                children: <Widget>[

                  Padding(
                    padding:EdgeInsets.only(bottom:5),
                    child: Text(
                      'Choose AppBar Color ?',
                      style: TextStyle(
                        fontSize:22,
                        color:Colors.blue[900],
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  // radio button 1 & Container
                  Row(
                    children:<Widget>[
                      Radio(
                        value: 1,
                        groupValue: groupValue,
                        activeColor:Colors.deepPurple,
                        onChanged: (int currentSectedValue){
                          setState(() {
                          appBarColor = Colors.blue;
                          groupValue = 1;
                          });
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom:15),
                        color:Colors.blue,
                        height: 50,
                        width:240,
                      )
                    ]
                  ),

                 Padding(
                  padding: EdgeInsets.only(bottom:30),
                 ),
                 
                  //Radio button 2 & Container
                  Row(
                    children:<Widget>[
                      Radio(
                        value: 2,
                        groupValue: groupValue,
                        activeColor:Colors.deepPurple,
                        onChanged: (int currentSectedValue){
                          setState(() {
                          appBarColor = Colors.deepPurpleAccent;
                          groupValue = 2;
                          });
                        },
                      ),

                      Container(
                        color:Colors.deepPurpleAccent,
                        height: 50,
                        width:240,
                      )
                    ]
                  ),

                ],
              ),
              

              // setting background Color
              Column(
                children: <Widget>[

                  Padding(
                    padding:EdgeInsets.only(top:35,bottom:5),
                    child: Text(
                      'Choose backgroundColor Color ?',
                      style: TextStyle(
                        fontSize:22,
                        color:Colors.blue[900],
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  // radio button 1 & Container
                  Row(
                    children:<Widget>[

                      Radio(
                        value: 3,
                        groupValue: groupValue1,
                        activeColor: Colors.deepPurple,
                        onChanged: (int currentSectedValue){
                          setState(() {
                          backgroundColor = Colors.teal[200];
                          groupValue1 = 3;
                          });
                        },
                      ),

                      Container(
                        color:Colors.teal[200],
                        height: 50,
                        width:240,
                      )
                    ]
                  ),

                  Padding(
                   padding: EdgeInsets.only(bottom:30),
                  ),

                  //Radio button 2 & Container
                  Row(
                    children:<Widget>[
                      Radio(
                        value: 4,
                        groupValue: groupValue1,
                        activeColor: Colors.deepPurple,
                        onChanged: (int currentSectedValue){
                          setState(() {
                          backgroundColor = Colors.pink[300];
                          groupValue1 = 4;
                          });
                        },
                      ),

                      Container(
                        color:Colors.pink[300],
                        height: 50,
                        width:240,
                      )
                    ]
                  ),

              ],
            ),


            Padding(
              padding: EdgeInsets.only(top:15),
              child: RaisedButton(
                onPressed: (){
                  setState(() {
                  appBarColor = Colors.deepOrangeAccent;
                  backgroundColor = Colors.white;
                  groupValue = 0;
                  groupValue1 = 0;
                  });
                },
                child: Text('Default'),
                shape: CircleBorder(),
                elevation: 10,
                color: Colors.deepPurpleAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(28),
              ),
            )

              
          ]
        ),
      )
    );
  }
}
