import 'package:flutter/material.dart'; 

class FlatButtonShow extends StatelessWidget{
  @override
  build(BuildContext context){
    return Container(
      child: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('FLAT BUTTON',style:TextStyle(color:Colors.deepPurpleAccent,)),
              onPressed: (){},
            ),
            Padding(
             padding:EdgeInsets.only(left: 15)
            ),
            FlatButton(
              child: Text('DISABLED'),
              onPressed: (){},
            )
          ],
        )
      ),
    );
  }
}