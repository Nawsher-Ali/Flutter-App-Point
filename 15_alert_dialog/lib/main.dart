import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'Alert Dialog',
      home:MyApp(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(title:Text('Exploring Alert Dialog'),
      backgroundColor:Colors.deepPurpleAccent
      ),

      body:Container(
        child:ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            getCard(context,'assets/b.jpg'),
            getCard(context,'assets/c.jpg'),
            getCard(context,'assets/d.jpg'),
            getCard(context,'assets/j.jpg'),
            getCard(context,'assets/l.jpg'),
          ]
        )
      )
    );
  }



 
 // this is used for build Card widget
 getCard(BuildContext context,imageName){
   return Card(
      child: Column(
        children: <Widget>[
          Image.asset(imageName),

          Padding(
            padding: EdgeInsets.all(15),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              Text('Fried Chicken'),
              Text('Price 10\$'),
              Text('Thakurgoan,Bangladesh'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                 Icon(Icons.favorite_border,color:Colors.redAccent),
                 Icon(Icons.share,color:Colors.blue[900]),
                   
                 FlatButton(
                  onPressed: (){
                    getAlertDialog(context);
                  },
                  child: Text('ORDER',style:TextStyle(color:Colors.white)),
                  color:Colors.deepPurpleAccent
                 )
                ],
              )
            ],
          )
        )
      ]
    ),
  );
 }



 // this is used for build AlertDialog widget
 getAlertDialog(BuildContext context){
   return showDialog(
     barrierDismissible: false,
     context: context,
     builder: (context){
       return AlertDialog(
         title: Text('Are you sure buy this product?'),
         actions: <Widget>[

           FlatButton(
             child: Text('NO'),
             onPressed: (){
               Navigator.pop(context);
             },
           ),

           FlatButton(
            child: Text('YES'),
            onPressed: (){
              Navigator.pop(context);
            },
           )

         ],
       );
     }
   );
 }

}