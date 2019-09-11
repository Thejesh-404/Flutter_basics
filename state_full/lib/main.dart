import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  Mybuttonstate createState(){
    return Mybuttonstate();  
  }
}

class Mybuttonstate extends State<MyApp>{

  var counter=0;

  List num = ["uno","dos","tros","cuatro","cinco","seie","seite","ocho","nueve","dietz"];

  List iny =["1","2","3","4","5","6","7","8","9","10"];

  var text = "spanish_numbers";

  var i = "value";

  void displaynum(){

    setState((){
      text = num[counter]; 
      i = iny[counter];
      counter++;
      if(counter>9)
      counter=0; 
    });
  }
  @override
  Widget build(BuildContext context){
    return 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      home:
    
    Scaffold(
      appBar: AppBar(
        title: Text("First_page"),
        backgroundColor: Colors.blueAccent,),
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              

                Text(text,style: TextStyle(fontSize: 30.0),),
                Padding(padding: EdgeInsets.all(5.0)),
              Text(i,style: TextStyle(fontSize: 30.0),),
                Padding(padding: EdgeInsets.all(10.0)),
                
                RaisedButton(
                  onPressed: displaynum,
                  child: Text("change number"),
                )
              ],
            ),
          ),
    ),

    floatingActionButton: Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 100.0, 150.0, 160.0),
      child: FloatingActionButton(

      
        onPressed: displaynum,
        child : 
        Icon(Icons.plus_one),
        backgroundColor: Colors.blueAccent,
      
      ),
    )
    )
    );
  }
}
