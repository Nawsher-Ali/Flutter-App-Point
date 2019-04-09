import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Card in flutter',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}// main method end

class MyApp extends StatelessWidget {
  
  @override
  build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text('Exploring Cards Widget'),
          backgroundColor: Colors.redAccent,
        ),//AppBar
      
        body: ListView(
          padding: EdgeInsets.all(15),
          children: <Widget>[
            
            // Card 1 abd padding
            Padding(
              padding:EdgeInsets.only(top:10,bottom:8,left: 2),
              child: Text('First Card')),
            getCard('assets/c.jpg'),
           
            
           // Card 2 abd padding
           Padding(
              padding:EdgeInsets.only(top:10,bottom:8,left: 2),
              child: Text('Second Card')),
            getCard('assets/d.jpg'),
            
            
            // Card 3 abd padding
            Padding(
              padding:EdgeInsets.only(top:10,bottom:8,left: 2),
              child: Text('Third Card')),
            getCard('assets/j.jpg'),
            
            
            // Card 4 abd padding
            Padding(
              padding:EdgeInsets.only(top:10,bottom:8,left: 2),
              child: Text('Fourth Card')),
            getCard('assets/l.jpg'),
            
            
            // Card 5 abd padding
            Padding(
              padding:EdgeInsets.only(top:10,bottom:8,left: 2),
              child: Text('Fifth Card')),
            getCard('assets/m.jpg'),
            
          ],
        )//ListView
      );//Scaffold
  }// build method


  // this method is used for build Card Widget
  getCard(imageName){
    return Card(

      elevation: 10,

      shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(15.0),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Image.asset(imageName),
          
          Padding(
            padding: EdgeInsets.only(left: 10,top:15),
            child:  Text('Awesome Food'),
          ),//Padding
          
          Padding(
            padding: EdgeInsets.only(left: 10,bottom:10),
            child: Text('Price : 10\$')
          ),//Padding
          
          Padding(
            padding: EdgeInsets.only(left: 10,bottom:10),
            child: Row(
              children:<Widget>[
                Icon(Icons.favorite,color:Colors.redAccent),
                Icon(Icons.share,color:Colors.redAccent),
                Icon(Icons.star,color:Colors.redAccent),
              ]
           )//Row
         )//Padding
       ]
      ),//Column

    );//Card
  }// getCard method end 


}
