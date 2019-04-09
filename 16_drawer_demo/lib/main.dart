import 'package:flutter/material.dart';
import './first_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyApp()
    )
  );
}


class MyApp extends StatelessWidget{
  
  @override
  build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title:Text('Exploring Drawer Demo'),
        backgroundColor: Colors.deepPurpleAccent[700],
      ),//AppBar

      body: Container(
        color:Colors.red[200],
        child: Center(
          child:Icon(
            Icons.favorite_border,
            size:200,
            color:Colors.teal
          ),//Icon
        ),//Center
      ),//Container

      
      drawer: Drawer(
        child:ListView(
          children:<Widget>[
            
            Stack(
              children: <Widget>[

                Image.asset('assets/image1.jpg'),

                Positioned(
                  left: 10,
                  top:95,
                  child: Icon(Icons.contact_mail,size:40,color:Colors.blue[900]),
                ),

                Positioned(
                  left: 10,
                  bottom:33,
                  child: Text('Flutter Developer',style:TextStyle(color:Colors.redAccent,fontSize:22)),
                ),
                
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text('nawsher321@gmail.com',style: TextStyle(color:Colors.redAccent,fontSize:20),)
                ),

              ],
            ),//Stack
            
            
            // ListTile 1 in drawer
            getListTile(
              Icon(Icons.bookmark_border,color:Colors.deepOrange,size:40),
               Colors.deepPurpleAccent, 
               'Book Marks', context
            ),
            
            
            // ListTile 2 in drawer
            getListTile(
              Icon(Icons.archive,color:Colors.pink[400],size:40),
               Colors.deepPurpleAccent, 
               'Archive', context
            ),
            
            
            // ListTile 3 in drawer
            getListTile(
              Icon(Icons.brightness_medium,color:Colors.blue,size:40),
               Colors.deepPurpleAccent, 
               'Theme Setting', context
            ),
            
            
            // ListTile 4 in drawer
            getListTile(
              Icon(Icons.star_border,color:Colors.redAccent,size:40),
               Colors.deepPurpleAccent, 
               'Star', context
            ),
            
            
            // ListTile 5 in drawer
            getListTile(
              Icon(Icons.mail_outline,color:Colors.deepPurpleAccent,size:40),
              Colors.deepPurpleAccent, 
              'Mail', 
              context
            )

          ]
         ),//ListView
       )//Drawer
      
    );//Scaffold
  }//build method end


  // this is used for build listTile
  getListTile(Icon icon,Color color,String iconName,BuildContext context){

    return ListTile(
      leading:icon,
      title:Text(iconName),
      onTap: (){
       Navigator.push(context,MaterialPageRoute( builder: (BuildContext context) => ShowWidget(icon,iconName)));
      },
    );//ListTile
  }


}
