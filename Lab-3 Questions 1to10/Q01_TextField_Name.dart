import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:NameApp()));
class NameApp extends StatefulWidget{State createState()=>_NameAppState();}
class _NameAppState extends State<NameApp>{
  final n=TextEditingController(); String name='';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Student Name')),body:Padding(
    padding:EdgeInsets.all(20),child:Column(children:[
      TextField(controller:n,decoration:InputDecoration(labelText:'Enter Name')),
      ElevatedButton(onPressed:()=>setState(()=>name=n.text),child:Text('Show')),
      Text(name)
    ])));
}