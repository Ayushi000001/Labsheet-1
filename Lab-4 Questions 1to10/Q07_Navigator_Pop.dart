import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:First()));

class First extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('First Screen')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Second())),
      child:Text('Next'),
    )),
  );
}
class Second extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Second Screen')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.pop(c),
      child:Text('Back'),
    )),
  );
}