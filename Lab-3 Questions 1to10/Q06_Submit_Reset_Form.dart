import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:FormApp()));
class FormApp extends StatefulWidget{State createState()=>_FormAppState();}
class _FormAppState extends State<FormApp>{
  final n=TextEditingController(); String r='';
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Simple Form')),body:Padding(
    padding:EdgeInsets.all(20),child:Column(children:[
      TextField(controller:n,decoration:InputDecoration(labelText:'Name')),
      Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children:[
        ElevatedButton(onPressed:()=>setState(()=>r='Submitted: ${n.text}'),child:Text('Submit')),
        ElevatedButton(onPressed:()=>setState(()=>{n.clear(),r=''}),child:Text('Reset'))
      ]),
      Text(r)
    ])));
}