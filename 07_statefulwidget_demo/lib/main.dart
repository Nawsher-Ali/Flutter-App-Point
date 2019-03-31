import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Floating Action Button Demo',
      home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return HomePage();
  }
}


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;

  @override
  build(BuildContext context){

    return Scaffold(

      appBar:AppBar(title:Text('Floating Action Button'),
      backgroundColor:Colors.indigo[900],
      ),

      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Increment Value is : $counter',
              style:TextStyle(fontSize:22,color:Colors.indigo[900])
            ),
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:increment,
        child:Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
    );
  }

  void increment(){
    setState(() {
     counter++;
    });
  }

}
