import 'package:flutter/material.dart';
import 'pages/first_page.dart';
import 'pages/second_page.dart';
import 'pages/third_page.dart';
import 'pages/four_page.dart';
import 'pages/five_page.dart';
import 'pages/six_page.dart';
import 'pages/seven_page.dart';
import 'pages/eight_page.dart';
import 'pages/nine_page.dart';
import 'pages/ten_page.dart';
import 'pages/eleven_page.dart';
import 'pages/twelve.dart';


void main(){
  runApp(
    MaterialApp(
      title:'Quraner Mugija',
      home:QuranApp(),
      debugShowCheckedModeBanner:false,
    )
  );
}

class QuranApp extends StatefulWidget{

  @override
  QuranAppState createState() => QuranAppState();
  
}

class QuranAppState extends State<QuranApp>{

  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('কোরআনের মুজিঝা'),
        centerTitle: true,
        backgroundColor:Colors.deepOrangeAccent,
      ),

      body:SafeArea(
        minimum: EdgeInsets.all(10),
       child: ListView(
          children: <Widget>[
            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                 //Material button 1
                buildMaterialButton('মহাকাশ/Space - 1', FirstScreen()),
                Divider(),

                //Material button 2
                buildMaterialButton('মহাকাশ/Space - 2', SecondScreen()),
                Divider(),

                //Material button 3
               buildMaterialButton('মহাকাশ/Space - 3', ThirdScreen()),
               Divider(),

                //Material button 4
                buildMaterialButton('section 4', FourScreen()),
                Divider(),

                //Material button 5
                buildMaterialButton('section 5', FiveScreen()),
                Divider(),

                //Material button 6
                buildMaterialButton('section 6', SixScreen()),
                Divider(),

                //Material button 7
                buildMaterialButton('section 7', SevenScreen()),
                 Divider(),

                //Material button 8
                buildMaterialButton('section 8',EightScreen()),
                Divider(),

                //Material button 9
                 buildMaterialButton('section 9', NineScreen()),
                 Divider(),

                //Material button 10
                buildMaterialButton('section 10', TenScreen()),
                Divider(),

                //Material button 11
                buildMaterialButton('section 11', ElevenScreen()),
                Divider(),

                //Material button 12
                buildMaterialButton('section 12', TwelveScreen()),
                Divider(),

                //Material button 13
                buildMaterialButton('section 13', TwelveScreen()),
                Divider(),

                //Material button 14
                buildMaterialButton('section 14', TwelveScreen()),
                Divider(),

                //Material button 15
                buildMaterialButton('section 15', TwelveScreen()),
                Divider(),

                //Material button 16
                buildMaterialButton('section 16', TwelveScreen()),
                Divider(),

                //Material button 17
                buildMaterialButton('section 17', TwelveScreen()),
                Divider(),

                //Material button 18
                buildMaterialButton('section 18', TwelveScreen()),
                Divider(),

              ],
            ),
           
            
          ],
        ),
      )
    );
  }

  buildMaterialButton(String btnName,Widget pageName){
    return MaterialButton(
      padding: EdgeInsets.all(22),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>pageName));
      },
      child: Text(btnName,style:TextStyle(color:Colors.white,fontSize:22)),
      color:Color(0xFF6A89CC)
    );
  }
}
