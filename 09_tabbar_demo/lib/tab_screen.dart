import 'package:flutter/material.dart';

class GetBodyWidget extends StatelessWidget{
  Icon icon;
  GetBodyWidget(this.icon);

  @override
   build(BuildContext context) {
    return  Container(
        child:Center(
          child: icon,
        )
      );
  }
}