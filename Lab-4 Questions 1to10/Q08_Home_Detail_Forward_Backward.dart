import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home:Home()));

class Home extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Home')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Detail())),
      child:Text('View Details'),
    )),
  );
}
class Detail extends StatelessWidget{
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:Text('Detail')),
    body:Center(child:ElevatedButton(
      onPressed:()=>Navigator.pop(c),
      child:Text('Back'),
    )),
  );
}