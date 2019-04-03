import 'package:flutter/material.dart';

class DropdownButtonShow extends StatelessWidget{

 @override
 build(BuildContext context){
  return HomePage();
 }
}

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  String _whatToDoButton = 'A material design button for selecting from a list of items.The button shows the currently selected item as well as an arrow that opens a menu for selecting another item.';
  String currentValue = 'Dart';
  String currentValue1 = 'Text';

  List<String> langauges = [
    'Dart',
    'Java',
    'Python',
    'Swift',
    'Objective C',
    'C++',
    'Go lang',
  ];
  List<String> widgets = [
    'Text',
    'Center',
    'Color',
    'Column',
    'Row',
    'Scaffold',
    'MaterialApp',
    'Materail',
    'AppBar',
    'Expanded',
    'Positioned',
    'Stack',
    'Card',
    'Button',
    'ListView',
    'Everything'
  ];
  

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[

              Padding(
                padding: EdgeInsets.all(10),
                child: Text(_whatToDoButton,style:TextStyle(fontSize: 15))
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Simple dropdown:',style:TextStyle(fontSize: 18,color:Colors.deepPurpleAccent)),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  DropdownButton<String>(

                    items: langauges.map((String dropdownItem){
                      return DropdownMenuItem<String>(
                        child:Text(dropdownItem),
                        value:dropdownItem,
                      );
                    }).toList(),

                    onChanged: (String newSelectedValue){
                      setState(() {
                        currentValue = newSelectedValue;
                      });
                    },

                    value: currentValue,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Scrollable dropdown:',style:TextStyle(fontSize: 18,color:Colors.deepPurpleAccent)),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  DropdownButton<String>(

                    items: widgets.map((String dropdownItem){
                      return DropdownMenuItem<String>(
                        child:Text(dropdownItem),
                        value:dropdownItem,
                      );
                    }).toList(),

                    onChanged: (String newSelectedValue){
                      setState(() {
                        currentValue1 = newSelectedValue;
                      });
                    },

                    value: currentValue1,
                  ),
                ],
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}