import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'checkbox demo',
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
  
  bool color1 = false;
  bool color2 = false;
  bool color3 = false;
  bool color4 = false;
  bool color5 = false;
  bool color6 = false;
  bool color7 = false;
  bool color8 = false;



  @override
  build(BuildContext context){

  int width = (MediaQuery.of(context).size.width).floor();

    return Scaffold(

      appBar:AppBar(
        title:Text('Check Box Demo'),
        backgroundColor:Colors.blue[900],
      ),

      
      body:Container(
        padding: EdgeInsets.all(10),
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding:EdgeInsets.only(bottom:15,),
              child: Text(
                'Which color are you choose?',
                style:TextStyle(
                  fontSize:22,
                  fontWeight:FontWeight.bold,
                  color:Colors.deepOrangeAccent,
                )
              ),
            ),



            //checkbox 1
            Row(
              children:<Widget>[

                Checkbox(
                  value: color1,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (bool myValue){
                    setState(() {
                      color1 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.redAccent
                )

              ] 
            ),
            


            // checkbox 2
            Row(
              children:<Widget>[

                Checkbox(
                  value: color2,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (bool myValue){
                    setState(() {
                      color2 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.blueAccent
                )

              ] 
            ),
            


            // checkbox 3
            Row(
              children:<Widget>[

                Checkbox(
                  activeColor: Colors.deepPurpleAccent,
                  value: color3,
                  onChanged: (bool myValue){
                    setState(() {
                      color3 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.green
                )

              ] 
            ),



            // checkbox 4
            Row(
              children:<Widget>[

                Checkbox(
                  value: color4,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (bool myValue){
                    setState(() {
                      color4 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.indigo
                )

              ] 
            ),
            


            // checkbox 5
            Row(
              children:<Widget>[

                Checkbox(
                  value: color5,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (bool myValue){
                    setState(() {
                      color5 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.blueGrey
                )

              ] 
            ),


            // checkbox 6
            Row(
              children:<Widget>[

                Checkbox(
                  value: color6,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (bool myValue){
                    setState(() {
                      color6 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.yellow
                )

              ] 
            ),


            // checkbox 7
            Row(
              children:<Widget>[

                Checkbox(
                  value: color7,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (bool myValue){
                    setState(() {
                      color7 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.purple
                )

              ] 
            ),


            // checkbox 8
            Row(
              children:<Widget>[

                Checkbox(
                  value: color8,
                  activeColor: Colors.deepPurpleAccent,
                  materialTapTargetSize:MaterialTapTargetSize.padded,
                  onChanged: (bool myValue){
                    setState(() {
                      color8 = myValue;
                    });
                  },
                ),

                Container(
                  height:40,
                  width: 3*width/4,
                  color:Colors.cyanAccent
                )

              ] 
            ),
            
          ],
        )
      )

    );
  }
}
  