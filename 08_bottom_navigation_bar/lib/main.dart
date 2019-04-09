import 'package:flutter/material.dart';
import './placeholdwidget.dart';


void main(){
 runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home:MyApp(),
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
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text('Exploring Bottom NavBar'),
        backgroundColor:Colors.indigo[900]
      ),//AppBar

      body:TabBarView(
        controller: controller,
        children: <Widget>[
          PlaceHoldWidget(Icon(Icons.home,size:100,color:Colors.deepPurple)),
          PlaceHoldWidget(Icon(Icons.portrait,size:100,color:Colors.deepOrangeAccent)),
          PlaceHoldWidget(Icon(Icons.place,size:100,color:Colors.blue[900])),
          PlaceHoldWidget(Icon(Icons.favorite_border,size:100,color:Colors.redAccent[400])),
        ],
      ),//TabBarView
      
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentTabIndex,
        type:BottomNavigationBarType.fixed,
        items: [
         
          // TabBar item 1
          BottomNavigationBarItem(
            icon:Icon(Icons.home,color:Colors.deepPurple),
            title:Text("Home")
          ),
          
         // TabBar item 2
          BottomNavigationBarItem(
            icon:Icon(Icons.portrait,color:Colors.deepOrangeAccent),
            title:Text("Contacts")
          ),
          
          // TabBar item 3
          BottomNavigationBarItem(
            icon:Icon(Icons.place,color:Colors.blue[900]),
            title:Text("Place")
          ),
          
          // TabBar item 4
          BottomNavigationBarItem(
            icon:Icon(Icons.favorite_border,color:Colors.redAccent[400]),
            title: Text('Favorites')
          )
         
        ],
      ),//BottomNavigationBar
     
    );//Scaffold
  }//build method


  //this method is used for currently selected tab index 
  void onTabTapped(int index){
    setState((){
      currentTabIndex = index;
    });
  }
 
}
