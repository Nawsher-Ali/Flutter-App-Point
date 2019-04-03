import 'package:flutter/material.dart';

class IconButtonShow extends StatelessWidget{
  @override
  build(BuildContext context){
    return Container(
      child:Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            IconButton(
              onPressed:(){},
              icon:Icon(Icons.notifications_active,size:40,color:Colors.deepPurpleAccent)
            ),
            Padding(
              padding:EdgeInsets.only(left:20,)
            ),
            IconButton(
              onPressed:(){},
              icon:Icon(Icons.notifications_off,size: 40),
            )

          ]
        )
      )
    );
  }
}