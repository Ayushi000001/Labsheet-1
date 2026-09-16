import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:Home()));

class Home extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Home')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>NewScreen())),
      child:Text('Open New Screen'),
    )),
  );
}
class NewScreen extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('New Screen')),
    body:Center(child:Text('New Screen')),
  );
}