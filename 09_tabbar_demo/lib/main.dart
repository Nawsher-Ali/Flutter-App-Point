import 'package:flutter/material.dart';
import './tab_screen.dart';


//entry point in app
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


  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }


  //this is method is used for build your choose UI
  @override
  build(BuildContext context){
    return Scaffold(

      appBar:AppBar(
        title:Text('Exploring Tab Bar'),
        bottom:getTabBar(),
        backgroundColor: Colors.deepPurple[900],
      ),//AppBar

      body:TabBarView(
       controller: controller,
       children: <Widget>[
          GetBodyWidget(Icon(Icons.home,size:100,color:Colors.redAccent)),
          GetBodyWidget(Icon(Icons.contacts,size:100,color:Colors.blue[600])),
          GetBodyWidget(Icon(Icons.settings,size:100,color:Colors.pink[900])),
          GetBodyWidget(Icon(Icons.share,size:100,color:Colors.blue[900])),
       ],
      )//TabBarView
      
    );//Scaffold
  }//build method


  // this method is used for changing tab index
  onTapTapped(int index){
    setState(() {
      currentTabIndex = index;
    });
  }


  //this method is creating tab bar
  getTabBar(){
    
    return TabBar(
      controller: controller,
      onTap: onTapTapped,
      tabs: <Widget>[
        
        //tab 1
        Tab(
          icon: Icon(Icons.home,),
          text:'Home',
        ),
        
        // tab 2
        Tab(
          icon: Icon(Icons.contact_mail),
          text:'Contacts'
        ),
        
        //tab 3
        Tab(
          icon: Icon(Icons.settings),
          text:'Settings'
        ),
        
        //tab 4
        Tab(
          icon: Icon(Icons.share),
          text:'Share'
        )
        
      ],
    );//TabBar
    
  }//getTabBar method
  
}// _HomePageState class
