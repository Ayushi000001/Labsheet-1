import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:NumberApp()));
class NumberApp extends StatefulWidget{State createState()=>_NumberAppState();}
class _NumberAppState extends State<NumberApp>{
  final n=TextEditingController(); String r='';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Number Check')),body:Center(child:Column(
    mainAxisAlignment:MainAxisAlignment.center,children:[
      TextField(controller:n,keyboardType:TextInputType.number),
      ElevatedButton(onPressed:()=>setState(()=>{var x=int.parse(n.text);r=x>0?'Positive':x<0?'Negative':'Zero'}),child:Text('Check')),
      Text(r)
    ])));
}