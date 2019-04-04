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
      ),

      body: Container(
        color:Colors.red[200],
        child: Center(
          child:Icon(
            Icons.favorite_border,
            size:200,
            color:Colors.teal
          ),
        ),
      ),

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
            ),
            
            getListTile(
              Icon(Icons.bookmark_border,color:Colors.deepOrange,size:40),
               Colors.deepPurpleAccent, 
               'Book Marks', context
            ),

            getListTile(
              Icon(Icons.archive,color:Colors.pink[400],size:40),
               Colors.deepPurpleAccent, 
               'Archive', context
            ),

            getListTile(
              Icon(Icons.brightness_medium,color:Colors.blue,size:40),
               Colors.deepPurpleAccent, 
               'Theme Setting', context
            ),

            getListTile(
              Icon(Icons.star_border,color:Colors.redAccent,size:40),
               Colors.deepPurpleAccent, 
               'Star', context
            ),

            getListTile(
              Icon(Icons.mail_outline,color:Colors.deepPurpleAccent,size:40),
              Colors.deepPurpleAccent, 
              'Mail', 
              context
            )

          ]
          ),
        )
    );
  }


  // this is used for build listTile
  getListTile(Icon icon,Color color,String iconName,BuildContext context){

    return ListTile(
      leading:icon,
      title:Text(iconName),
      onTap: (){
       Navigator.push(context, MaterialPageRoute(
         builder: (BuildContext context) => ShowWidget(icon,iconName)
         )
       );
      },
    );
  }


}
