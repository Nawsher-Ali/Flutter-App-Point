import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'Visibility Widget Demo',
      debugShowCheckedModeBanner:false,
      home:MyApp(),
    )
  );
}


class MyApp extends StatelessWidget{

  @override
  build(BuildContext context){

    return Scaffold(

      appBar:AppBar(
        title:Text('Visibility Widget'),
        backgroundColor:Color(0xFF3C40C6),
      ),

      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[

            //this padding is used for first row
            Padding(
              padding:EdgeInsets.only(bottom:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget>[
                  Text('JavaScript',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                  Text('Java',style:TextStyle(fontSize: 18,fontWeight:FontWeight.bold,backgroundColor: Color(0xFF7CEC9F))),
                  Text('Dart',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold))
                ]
              ),
            ),


            //this is second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('JavaScript',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                Visibility(
                  visible: false,
                  child: Text('Java',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                  replacement:Text('rep Python',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,backgroundColor:Color(0xFF7CEC9F)))              
                ),
                Text('Dart',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold))
              ],
            )
            
          ]
        ),
      )
    );  
  }
  
}