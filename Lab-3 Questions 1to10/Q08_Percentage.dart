import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:PercentApp()));
class PercentApp extends StatefulWidget{State createState()=>_PercentAppState();}
class _PercentAppState extends State<PercentApp>{
  final a=TextEditingController(),b=TextEditingController(),d=TextEditingController(); String r='';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Percentage')),body:Padding(
    padding:EdgeInsets.all(20),child:Column(children:[
      TextField(controller:a,keyboardType:TextInputType.number),
      TextField(controller:b,keyboardType:TextInputType.number),
      TextField(controller:d,keyboardType:TextInputType.number),
      ElevatedButton(onPressed:()=>setState(()=>r='Percentage = ${(int.parse(a.text)+int.parse(b.text)+int.parse(d.text))/3}%'),child:Text('Calculate')),
      Text(r)
    ])));
}