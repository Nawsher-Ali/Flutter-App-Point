import 'package:flutter/material.dart';
import './tab_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
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

  int currentTabIndex = 0;
  TabController controller;

  List<Widget> children = [
    GetBodyWidget(Icon(Icons.home,size:100,color:Colors.redAccent)),
    GetBodyWidget(Icon(Icons.contacts,size:100,color:Colors.blue[600])),
    GetBodyWidget(Icon(Icons.settings,size:100,color:Colors.pink[900])),
    GetBodyWidget(Icon(Icons.share,size:100,color:Colors.blue[900])),
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: children.length,
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
        title:Text('Exploring Tab Bar'),
        bottom:getTabBar(),
        backgroundColor: Colors.deepPurple[900],
        ),

      body:children[currentTabIndex],

    );
  }

  onTapTapped(int index){
    setState(() {
      currentTabIndex = index;
    });
  }

  getTabBar(){
    return TabBar(
          controller: controller,
          onTap: onTapTapped,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home,),
              text:'Home',
            ),

            Tab(
              icon: Icon(Icons.contact_mail),
              text:'Contacts'
            ),

            Tab(
              icon: Icon(Icons.settings),
              text:'Settings'
            ),

            Tab(
              icon: Icon(Icons.share),
              text:'Share'
            )
          ],
        );
  }
  
}