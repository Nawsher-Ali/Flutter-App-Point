import 'package:flutter/material.dart';

class RaisedButtonShow extends StatelessWidget{
  @override
  build(BuildContext context){
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){},
              child: Text('RAISED BUTTON',style:TextStyle(color:Colors.white)),
              color: Colors.deepPurpleAccent,
            ),
            Padding(
             padding: EdgeInsets.only(left: 15),
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('DISABLED'),
            )
          ],
        ),
      ),
    );
  }
}