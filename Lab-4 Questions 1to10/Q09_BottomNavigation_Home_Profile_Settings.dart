import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:App()));

class App extends StatefulWidget{
  State createState()=>_AppState();
}
class _AppState extends State<App>{
  int i=0;
  final pages=[Text('Home'),Text('Profile'),Text('Settings')];
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Navigation')),
    body:Center(child:pages[i]),
    bottomNavigationBar:BottomNavigationBar(
      currentIndex:i,
      onTap:(x)=>setState(()=>i=x),
      items:[
        BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.person),label:'Profile'),
        BottomNavigationBarItem(icon:Icon(Icons.settings),label:'Settings'),
      ],
    ),
  );
}