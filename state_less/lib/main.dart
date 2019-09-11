import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
  title : "state_less_demo",
  //onGenerateTitle: GenerateAppTitle("state_demo"),
  theme: ThemeData.dark(),
  debugShowCheckedModeBanner: false,
  home: Scaffold(
        appBar: AppBar(title : Text("Home_Screen",style: TextStyle(fontSize:20.0 , color:Colors.lightGreenAccent),),
        backgroundColor: Colors.blueAccent,),
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child :
         Icon(Icons.add_circle_outline
         )    
    ), 

    body : Center(

       child :Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text("Hey There",style: TextStyle(decorationColor: Colors.blueAccent,fontSize: 15.0,),),
        Text("Hi There",style: TextStyle(backgroundColor: Colors.blueAccent,fontSize: 15.0),),
        RaisedButton(

          child : Text("login"),
          color : Colors.green,
          splashColor: Colors.lightBlue,
         onPressed: () {},  
          )
        ],
      ),
    ),     
      )
 );

  }
}