import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'flutter overlay demo',
      home:MyApp(),
      debugShowCheckedModeBanner:false,
    )
  );
}

class MyApp extends StatelessWidget {

  //this method is used for show overlay
  showOverlay(BuildContext context) async{

    OverlayState overlayState = Overlay.of(context);

    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context){
        return Positioned(
          top:29,
          right:18,
          child: CircleAvatar(
            radius: 10,
            child: Text('1'),
            backgroundColor: Colors.red,
          ),
        );
      }
    );

    overlayState.insert(overlayEntry);
    await Future.delayed(Duration(seconds: 3));
    overlayEntry.remove();

  }
 

  //this method is used for build method
  @override
  build(BuildContext context){

    return Scaffold(

      //this widget is appBar
      appBar:AppBar(
        title:Text('Overlay is Awesome'),
        actions:<Widget>[
          Padding(
            padding:EdgeInsets.all(15),
            child: IconButton(
              onPressed: (){
                showNotification(context);
              },
              icon:Icon(Icons.notifications,color:Colors.white),
            ),
          )
           
        ],
      ),

      
      // this widget is used body container
      body:Container(
        color:Color(0xFFB33771),
        child:ListView(
          children:<Widget>[

            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  //this padding is used gretting text
                  Padding(
                    padding: EdgeInsets.only(top:20),
                    child: Text(
                      'Welcome',
                      style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                    ),
                  ),


                  //this container is used for circleAvater
                  Container(
                    padding: EdgeInsets.only(left: 110,top:30,bottom:30),
                    child:ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person_outline,size:40,color:Colors.white),
                        radius: 40,
                        backgroundColor: Colors.teal,
                      ),
                    )
                  ),  


                  //this padding is used for input email
                  Padding(
                    padding:EdgeInsets.all(10),
                    child: TextField(

                      keyboardType: TextInputType.text,

                      decoration:InputDecoration(
                        icon:Icon(Icons.email,color:Colors.white),
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(30),
                          // borderSide: BorderSide(color:Colors.white)
                        ),

                        labelText:'Enter email',
                        labelStyle: TextStyle(color:Colors.white),

                      ),
                      
                    ),
                  ),


                  //this padding for input password
                  Padding(
                    padding:EdgeInsets.all(10),
                    child: TextField(

                      keyboardType: TextInputType.text,

                      obscureText:true,

                      decoration:InputDecoration(
                        icon: Icon(Icons.edit,color:Colors.white),
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(30),
                        ),

                        labelText:'Enter Password',
                        labelStyle: TextStyle(color:Colors.white),

                      ),
                      
                    ),
                  ),


                  //this padding for RaisedButton of login
                  Padding(
                    padding:EdgeInsets.only(top:30),
                    child: RaisedButton(
                      onPressed:(){
                        showOverlay(context);
                      },
                      child: Text('Login',
                      style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)
                      ),
                      color:Color(0xFFFEA47F),
                    ),
                  ),

                ],
              ),

            
          ]
        )
      )
    );
  }


  // this method is used for show notification.
  showNotification(BuildContext context){
    return showDialog(
      barrierDismissible:false,
      context: context,
      builder: (context){
        return AlertDialog(
          content:Text('Login is successful!',style:TextStyle(fontSize:18,)),
          actions: <Widget>[
            FlatButton(
              onPressed:(){
                Navigator.pop(context,true);
              },
              child:Text('ok',style:TextStyle(color:Colors.white)),
              color:Colors.deepPurpleAccent,
            )
          ],
        );
      }, 
      
    );
  }

}