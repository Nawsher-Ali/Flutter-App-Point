import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:'Exploring Draggable Widget',
      home:App(),
      debugShowCheckedModeBanner:false,
    )
  );
}


class App extends StatefulWidget{

  @override
  AppState createState() => AppState();

}

class AppState extends State<App>{

 Icon caughtIcon = Icon(Icons.home,size:50,color:Colors.white);

  @override
  build(BuildContext context){
    return Scaffold(

      appBar: AppBar(title:Text('Exploring Draggable Widget'),
      backgroundColor: Colors.deepOrangeAccent,
      ),

      body:Stack(
        children:<Widget>[

          //draggable box 1
          DragBox(
            Offset(0.0,0.0),
             Icon(Icons.free_breakfast,color:Colors.white,size:50),
              Colors.redAccent
          ),

          //draggable box 2
          DragBox(
            Offset(100,0.0), 
            Icon(Icons.favorite,color:Colors.white,size:50),
             Colors.indigo[900]
          ),

          //draggable box 3
          DragBox(
            Offset(200,0.0),
            Icon(Icons.school,color:Colors.white,size:50),
             Colors.purpleAccent
          ),

          // dragTarget box
          Positioned(
            left: 100,
            bottom:10,
            child: DragTarget(
              
              onAccept: (Icon icon){
                caughtIcon = icon;
              },

              builder:(context,List<dynamic> accepted,List<dynamic> rejected){
                return Container(
                  height: 140,
                  width: 140,
                  color:Colors.teal,
                  child: Center(
                    child:caughtIcon,
                  )
                );
              },

            ),
          ),

          //reset button
          Positioned(
            right:10,
            bottom:10,
            child:RaisedButton(
              onPressed: (){
                setState(() {
                 caughtIcon = Icon(Icons.home,size:50,color:Colors.white);
                });
              },
              child:Text('RESET',style: TextStyle(color:Colors.white),),
              color:Colors.deepPurpleAccent,
            )
          )
          
        ]
      )
    );
  }

}


class DragBox extends StatefulWidget{

  Offset initPos;
  Icon itemIcon;
  Color itemColor;

  DragBox( this.initPos,this.itemIcon,this.itemColor);

  @override
  DragBoxState createState() => DragBoxState();
  
}

class DragBoxState extends State<DragBox>{

 Offset position = Offset(0.0,0.0);

  @override
  initState(){
    super.initState();
    position = widget.initPos;
  }

  @override
  build(BuildContext context){
    return Positioned(
     left:position.dx,
     top:position.dy,
     child:Draggable(
       data: widget.itemIcon,
      child:Container(
        height: 100,
        width: 100,
        color:widget.itemColor,
        child: Center(
          child: widget.itemIcon
        ),
      ),

      feedback:Container(
        height: 100,
        width: 100,
        color:widget.itemColor,
        child: Center(
          child: widget.itemIcon,
        ),
      ),

      onDraggableCanceled: (velocity,offset){
        setState(() {
         position = offset; 
        });
      },
     )
    );
  }
}
