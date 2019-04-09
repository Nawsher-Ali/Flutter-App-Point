import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'ImageAsset Demo',
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Exploring AssetImage'),
        backgroundColor:Colors.blue[900],
      ),//AppBar

      body:Container(
        child:Column(
          children:<Widget>[
            
            // padding of image
            Padding(
              padding:EdgeInsets.all(5),
              child:Image.asset(
                "assets/mosque.jpg",
                colorBlendMode:BlendMode.darken,
                fit:BoxFit.cover,
                filterQuality: FilterQuality.medium,
              ),
            ),
            
            // image describe
            Text(
              'Awesome Mosque in Bangladesh',
              style:TextStyle(
                fontSize: 20,
                color:Colors.indigo[900],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
            
          ]
        )//Column
        
      )//Container
    );//Scaffold
    
  }//build method
}
