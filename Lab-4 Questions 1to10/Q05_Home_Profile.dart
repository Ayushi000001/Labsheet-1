import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:Home()));

class Home extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Home')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Profile())),
      child:Text('Open Profile'),
    )),
  );
}
class Profile extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Profile')),
    body:Center(child:Text('Profile Screen')),
  );
}