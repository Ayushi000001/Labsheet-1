import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:TextApp()));
class TextApp extends StatefulWidget{State createState()=>_TextAppState();}
class _TextAppState extends State<TextApp>{
  String s='Hello';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Change Text')),body:Center(child:Column(
    mainAxisAlignment:MainAxisAlignment.center,children:[
      Text(s,style:TextStyle(fontSize:25)),
      ElevatedButton(onPressed:()=>setState(()=>s='Button Pressed!'),child:Text('Change'))
    ])));
}