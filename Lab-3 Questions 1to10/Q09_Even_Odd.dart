import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:EvenApp()));
class EvenApp extends StatefulWidget{State createState()=>_EvenAppState();}
class _EvenAppState extends State<EvenApp>{
  final n=TextEditingController(); String r='';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Even or Odd')),body:Center(child:Column(
    mainAxisAlignment:MainAxisAlignment.center,children:[
      TextField(controller:n,keyboardType:TextInputType.number),
      ElevatedButton(onPressed:()=>setState(()=>r=int.parse(n.text)%2==0?'Even':'Odd'),child:Text('Check')),
      Text(r)
    ])));
}