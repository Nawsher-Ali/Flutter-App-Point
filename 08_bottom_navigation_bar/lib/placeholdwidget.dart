import 'package:flutter/material.dart';

class PlaceHoldWidget extends StatelessWidget{

  Icon icon;
  PlaceHoldWidget(this.icon);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child:Center(
        child: icon,
      ),
    );
    
  }//build method
  
}
