import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:Home()));

class Home extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Home')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>About())),
      child:Text('About'),
    )),
  );
}
class About extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('About')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.pop(c),
      child:Text('Back to Home'),
    )),
  );
}