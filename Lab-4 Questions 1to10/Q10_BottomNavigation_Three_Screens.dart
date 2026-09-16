import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:App()));

class App extends StatefulWidget{
  State createState()=>_AppState();
}
class _AppState extends State<App>{
  int i=0;
  final pages=[Text('Screen 1'),Text('Screen 2'),Text('Screen 3')];
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Three Screens')),
    body:Center(child:pages[i]),
    bottomNavigationBar:BottomNavigationBar(
      currentIndex:i,
      onTap:(x)=>setState(()=>i=x),
      items:[
        BottomNavigationBarItem(icon:Icon(Icons.home),label:'Screen 1'),
        BottomNavigationBarItem(icon:Icon(Icons.person),label:'Screen 2'),
        BottomNavigationBarItem(icon:Icon(Icons.settings),label:'Screen 3'),
      ],
    ),
  );
}