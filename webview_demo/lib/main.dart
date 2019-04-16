import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main(){
  runApp(
    MaterialApp(
      title:'webview demo',
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

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(

      appBar: AppBar(title: Text('Flutter WebView'),),
      url: 'https://flutter.dev',
      withZoom:false,

    );
  }

}