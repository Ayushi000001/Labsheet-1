import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:CalcApp()));
class CalcApp extends StatefulWidget{State createState()=>_CalcAppState();}
class _CalcAppState extends State<CalcApp>{
  final a=TextEditingController(),b=TextEditingController(); String r='';
  void op(String x){double m=double.parse(a.text),n=double.parse(b.text);setState(()=>r=x=='+'?'${m+n}':x=='-'?'${m-n}':x=='*'?'${m*n}':'${m/n}');}
  Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Calculator')),body:Padding(
    padding:EdgeInsets.all(20),child:Column(children:[
      TextField(controller:a,keyboardType:TextInputType.number),
      TextField(controller:b,keyboardType:TextInputType.number),
      Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children:['+','-','*','/'].map((x)=>ElevatedButton(onPressed:()=>op(x),child:Text(x))).toList()),
      Text('Result: $r')
    ])));
}