import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:SnackApp()));
class SnackApp extends StatelessWidget{
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('SnackBar')),body:Center(child:ElevatedButton(
    onPressed:()=>ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('Hello! This is a SnackBar'))),
    child:Text('Show Message'))));
}