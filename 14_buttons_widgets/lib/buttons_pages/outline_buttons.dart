import 'package:flutter/material.dart';

class OutlineButtonShow extends StatelessWidget{
  @override
  build(BuildContext context){
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            OutlineButton(
              onPressed: (){},
              child: Text('OUTLINE BUTTON',style: TextStyle(color:Colors.deepPurpleAccent),),
            ),
            Padding(
              padding:EdgeInsets.only(left:15),
            ),
            OutlineButton(
              onPressed: (){},
              child: Text('DISABLED'),
            )

          ],
        ),
      ),
    );
  }
}