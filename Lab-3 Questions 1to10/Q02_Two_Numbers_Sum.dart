import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:SumApp()));
class SumApp extends StatefulWidget{State createState()=>_SumAppState();}
class _SumAppState extends State<SumApp>{
  final a=TextEditingController(),b=TextEditingController(); String r='';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Sum')),body:Padding(
    padding:EdgeInsets.all(20),child:Column(children:[
      TextField(controller:a,keyboardType:TextInputType.number),
      TextField(controller:b,keyboardType:TextInputType.number),
      ElevatedButton(onPressed:()=>setState(()=>r='Sum = ${int.parse(a.text)+int.parse(b.text)}'),child:Text('Add')),
      Text(r)
    ])));
}