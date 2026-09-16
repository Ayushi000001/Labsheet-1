import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:Home()));

class Home extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Home')),
    body:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
      Center(child:ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Profile())),child:Text('Profile'))),
      ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Settings())),child:Text('Settings')),
    ]),
  );
}
class Profile extends StatelessWidget{
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Profile')),body:Center(child:Text('Profile Screen')));
}
class Settings extends StatelessWidget{
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Settings')),body:Center(child:Text('Settings Screen')));
}