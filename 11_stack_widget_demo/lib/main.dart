import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Stack Widget Exploring',
      home:MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Stack Widget Demo'),
        backgroundColor: Colors.deepPurple[900],
      ),

      body:Stack(
        children: <Widget>[
          //Image 1
          Image.asset('assets/image1.jpg',),
          Positioned(
            bottom:8,
            left: 5,
            child: Text(
              'Image 1',
              style:TextStyle(
                fontSize:20,
                color:Colors.deepOrange,
                fontWeight: FontWeight.bold,
                ),
            ),
          ),


          // image 2
          Image.asset(
            'assets/image1.jpg',
            width:250,
            height:150,
          ),
          Positioned(
            bottom:100,
            left: 5,
            child: Text(
              'Image 2',
              style:TextStyle(
                fontSize:18,
                color:Colors.deepOrange,
                fontWeight: FontWeight.bold,
                ),
            ),
          ),

          // image 3
          Image.asset(
            'assets/image1.jpg',
            width:140,
            height:100,
          ),
          Positioned(
            top:70,
            left: 5,
            child: Text(
              'Image 3',
              style:TextStyle(
                fontSize:18,
                color:Colors.deepOrange,
                fontWeight: FontWeight.bold,
                ),
            ),
          ),

        ],
      )
    );
  }
}