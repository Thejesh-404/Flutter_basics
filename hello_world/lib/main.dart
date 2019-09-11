import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
void main(){
runApp(
  MaterialApp(
    title: "my_first_app_",
    debugShowCheckedModeBanner: false,
    color: Colors.black,
    
    home : Scaffold(
      appBar: AppBar(title: Text("Home screen"), ),
    body: 
     Material(
      color: Colors.blue,
      child:  
      Center(
    child: Text("Hello_Flutter", textDirection :TextDirection.ltr, style: TextStyle(color: Colors.white,fontSize: 40.0),
    ) ,
  ),
),
   ),
  )
    ); 
}

