import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main(){
  runApp(
    MaterialApp(
      title:'buttons',
      home:MyApp(),
      debugShowCheckedModeBanner:false,
    )
  );
}


class MyApp extends StatelessWidget{
  
  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title: Text('Exploring Text Fields'),
        backgroundColor: Colors.deepPurpleAccent,
      ),//AppBar

      body:Container(
        padding:EdgeInsets.all(10),
        child: ListView(
          children:<Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
               
                
              //Text for welcome login screen  
              Text(
                'Welcome',
                style:TextStyle(
                  fontSize:25,
                  color:Colors.pink[900],
                  fontWeight: FontWeight.bold)
              ),
              
                
              // container for face avater
              Container(
                padding: EdgeInsets.only(left: 110,top:15,),
                child:ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person_outline,size:40,color:Colors.white),
                    radius: 40,
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                )
              ),  
              
                
              //padding of login text
              Padding(
                padding: EdgeInsets.only(top:15,bottom:15),
                child: Text(
                  'Login',
                  style:TextStyle(
                    fontSize:22,
                    color:Colors.pink[900],
                    fontWeight:FontWeight.bold,
                    )
                ),
              ),
              
                
              // TextField for e-mail
              TextField(
                keyboardType:TextInputType.text,
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color:Colors.blue[900])
                  ),
                  labelText: 'E-mail',
                ),
              ),
              
                
              // padding of password TextField
              Padding(
                padding: EdgeInsets.only(top:10,bottom:15),
                child: TextField(
                  
                  keyboardType:TextInputType.text,
                  
                  obscureText: true,
                  
                  decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color:Colors.blue[900]),
                    ),
                    
                    labelText: 'Password',
                   ),
                 ),
               ),
               
              // padding of text
              Padding(
                padding: EdgeInsets.only(bottom:10),
                child: Text(
                  'Login With',
                   style:TextStyle(
                      fontSize:22,
                      color:Colors.teal[900],
                      fontWeight:FontWeight.bold,
                    )
                ),
              ),
              
               // google login button 
              GoogleSignInButton(
                onPressed: () {},
                text: 'Login with Google',
                darkMode: true,
                borderRadius: 15,
              ),
              
                
              //padding of facebook button
              Padding(
                padding: EdgeInsets.only(top:10,bottom:10),
                child: FacebookSignInButton(
                  onPressed: () {},
                  text: 'Login with Google',
                  borderRadius: 15,
                 ),
              ),
                
                
              //padding of submit button   
              Padding(
                padding: EdgeInsets.only(top:15),
                child: MaterialButton(
                  onPressed: (){
                    getAlertDialog(context);
                  },
                  child: Text('SUBMIT',style:TextStyle(color:Colors.white)),
                  color:Colors.deepPurpleAccent,
                 highlightColor: Colors.redAccent,
                 height: 50,
                ),//MaterialButton
              ),//Padding

              ]
            ),//Column
          ] 
        )//ListView
      ),//Container
    );//Scaffold
  }//build method end

  
  //this method is used for create alert dialog
  getAlertDialog(BuildContext context){
    return showDialog(
      context:context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          title: Text('Login is successful!'),
          titleTextStyle: TextStyle(color:Colors.white,fontSize: 22),
          backgroundColor: Colors.teal[900],
          actions: <Widget>[
            
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('OK',style:TextStyle(color:Colors.deepOrangeAccent,fontSize: 20)),
            )
            
          ],
        );//AlertDialog
      }
    );//showDialog
  }//getAlertDialog method end
  
}
