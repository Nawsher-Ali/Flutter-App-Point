import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'ListView Widget Demo',
      home:MyApp(),
      debugShowCheckedModeBanner:false,
    )
  );
}// main method end

class MyApp extends StatelessWidget{
  
  @override
  build(BuildContext context){
    return Scaffold(
      
      appBar:AppBar(
       title:Text('ListView Widget Exploring'),
       backgroundColor:Colors.blue[900]
      ),//AppBar

      body:ListView(
        children: <Widget>[
          getListTile('Md Nawsher Ali', 'nawsher321@gmail.com',Colors.deepPurple),
          getListTile('Md Mostafijur', 'mostafijur@gmail.com',Colors.deepOrange),
          getListTile('Md Anower', 'anowarbabu@gmail.com',Colors.blueAccent),
          getListTile('Md Mamun', 'mamun@gmail.com',Colors.pink[900]),
          getListTile('Md Siddik', 'siddik@gmail.com',Colors.blueGrey),
          getListTile('Md Saiful', 'saiful@gmail.com',Colors.indigo[900]),
          getListTile('Md Al-Amin', 'alamin@gmail.com',Colors.redAccent),
          getListTile('Md Naeem', 'naeem@gmail.com',Colors.blue[200]),
          getListTile('Md Lavlu Islam', 'lavlu@gmail.com',Colors.tealAccent),
          getListTile('Md Labib Islam', 'labib@gmail.com',Colors.orange[900]),
          getListTile('Md Laden', 'laden@gmail.com',Colors.cyanAccent),
          getListTile('Md Nahid', 'nahid@gmail.com',Colors.blue),

        ],
      )//ListView
    );//Scaffold
  }//build method

  
  // get ListTile
  getListTile(title,subTitle,color){
    return ListTile(
            leading: CircleAvatar(
              child:Icon(Icons.person,size: 30,),
              backgroundColor: color,
              radius: 30,
            ),
            title:Text(title,style:TextStyle(fontSize:20,)),
            subtitle: Text(subTitle,),
            trailing: Icon(Icons.call),
    );
  }//ListTile
}
