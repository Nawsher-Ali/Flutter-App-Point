import 'package:flutter/material.dart';

class TenScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xFF019031),
      child: Center(
        child: Text('Second Screen',textDirection: TextDirection.ltr,),
      ),
    );
  }
}