import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:MarksApp()));
class MarksApp extends StatefulWidget{State createState()=>_MarksAppState();}
class _MarksAppState extends State<MarksApp>{
  final n=TextEditingController(),a=TextEditingController(),b=TextEditingController(),d=TextEditingController(); String r='';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Total Marks')),body:Padding(
    padding:EdgeInsets.all(15),child:Column(children:[
      TextField(controller:n,decoration:InputDecoration(labelText:'Name')),
      TextField(controller:a,keyboardType:TextInputType.number,decoration:InputDecoration(labelText:'Subject 1')),
      TextField(controller:b,keyboardType:TextInputType.number,decoration:InputDecoration(labelText:'Subject 2')),
      TextField(controller:d,keyboardType:TextInputType.number,decoration:InputDecoration(labelText:'Subject 3')),
      ElevatedButton(onPressed:()=>setState(()=>r='Total = ${int.parse(a.text)+int.parse(b.text)+int.parse(d.text)}'),child:Text('Calculate')),
      Text(r)
    ])));
}