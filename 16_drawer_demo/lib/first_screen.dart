import 'package:flutter/material.dart';

class ShowWidget extends StatelessWidget{

  Icon icon;
  String iconName;
  ShowWidget(this.icon,this.iconName);
  @override
  build(BuildContext context){
    return Scaffold(

      appBar: AppBar(title:Text(iconName),backgroundColor: Colors.deepPurpleAccent,),

      body: Container(
        color:Colors.teal[300],
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              icon,
            Padding(
              padding: EdgeInsets.only(top:15),
              child: Text(iconName))
            ],
          )
        ),
      ),
    );
  }
}