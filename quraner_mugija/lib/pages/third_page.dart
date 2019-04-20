import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xFF019031),
      child: Center(
        child: Text('Third Screen',textDirection: TextDirection.ltr,),
      ),
    );
  }
}