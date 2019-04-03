import 'package:flutter/material.dart';
import './buttons_pages/flat_buttons.dart';
import './buttons_pages/raised_buttons.dart';
import './buttons_pages/action_buttons.dart';
import './buttons_pages/outline_buttons.dart';
import './buttons_pages/icon_buttons.dart';
import './buttons_pages/dropdown_buttons.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Buttons widgets Demo',
      home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context){
    return HomePage();
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController controller;
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 6,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }


  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Butttons Widgets Exploring',),
        backgroundColor: Colors.indigo[900],
        bottom: TabBar(
         controller: controller,
         isScrollable: true,
         onTap: onTabTapped,
         tabs: <Widget>[
          getTab('Raised Button',Colors.redAccent[400]),
          getTab('Flat Button',Colors.brown[600]),
          getTab('Outline Button',Colors.redAccent),
          getTab('Icon Button',Colors.deepOrange[600]),
          getTab('Action Button',Colors.lightBlueAccent),
          getTab('DropDown Button',Colors.tealAccent),
         ],
        ),
      ),

    body: TabBarView(
      controller: controller,
      children: <Widget>[
        RaisedButtonShow(),
        FlatButtonShow(),
        OutlineButtonShow(),
        IconButtonShow(),
        ActionButtonShow(),
        DropdownButtonShow(),
      ],
    ),

  );
}

  //this method is used for build Tab
  getTab(buttonNames,color){
    return Tab(
      icon:Icon(Icons.widgets,color:color),
      text:buttonNames,
    );
  }

  // this method is used for set currently selected tab index
  onTabTapped(int index){
    setState(() {
     currentTabIndex = index; 
    });
  }
  
}