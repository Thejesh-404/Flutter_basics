import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
   _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
   
   //getting images

   AssetImage circle = AssetImage("images/circle.png");
   AssetImage lucky = AssetImage("images/rupee.png");
   AssetImage unlucky = AssetImage("images/sadFace.png");

   // declaring varibles

  List state ;
  int  luckynum;
  int c;
  String message ;
  

  // initilzing varibles
  @override
  void initState()
  {
    super.initState();
    state = List.generate(25, (index) => "empty");
    generateran();
    c = 0;
    message = "Rsults";
  }

  generateran(){
    //int rnd = Random().nextInt(25);
  setState(() {
    //luckynum = rnd;

    luckynum = Random().nextInt(25);

    print(luckynum);
  });
  }

  // reset all

  reset(){
  setState(() {
     state = List.filled(25,  "empty"); 
  }); 
  generateran();
  c = 0;
  message ="Results";
  }

  // get image

   getimage(int index){

     // change one

    switch( state[index]) {

            case "lucky" :
            return lucky;
            break;
            case "unlucky" :
            return unlucky;
            break;
            case "empty" :
            return circle;
            break;
    }
  }
   
   
   // play game

  playgame(int index){
    if(luckynum == index)
    {
      setState(() {
        state[index]= "lucky";
        /*for(int j ;j<5;j++)
        {
          int n;
          n = Random().nextInt(25);
          state[n] = "lucky";
          print("n");

        }*/
        message = "you won 100";

      });
    }
    else
    {
      setState(() {
        state[index]= "unlucky"; 
        message = "better luck next time" ;
      });
    }
  c++;
  if(c>5)
  {
    setState(() {
     reset(); 
    });
  }
  } 

  // show all

  showAll(){
    setState(() {

      state = List.filled(25, "unlucky");
      state[luckynum] = "lucky";
      
    });
  }


  
   @override
   Widget build(BuildContext context) {
    return 
    Scaffold(
  
  appBar: AppBar(title: Text("SCARTCH AND WIN"), backgroundColor: Colors.transparent,),
  body: 
  Column(

    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.start,

  children: <Widget>[

    Expanded(

      child: GridView.builder(

        padding: EdgeInsets.all(20.0),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 5,
            childAspectRatio: 1.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,

        ),

        itemCount: 25,

        itemBuilder: (context, i) =>SizedBox(

            //width: 80.0,
            //height: 80.0,

            child: RaisedButton(
              onPressed: (){
                this.playgame(i);
              },
            child: Image(
            image : this.getimage(i),
            ),
            color: Colors.redAccent,
            ),
 ) ,
      ),
    ),

 





 Container(
margin: EdgeInsets.all(15.0),
child: RaisedButton(
  onPressed: (){
    showAll();
  },
  child: Text("display all",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,),
  ),
  color: Colors.limeAccent,
  padding: EdgeInsets.all(10.0),
),
),


Container(
margin: EdgeInsets.all(15.0),
child: RaisedButton(
  onPressed: (){
    reset();
  },
  child: Text("Reset",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,),),
  color: Colors.lightBlue,
  padding: EdgeInsets.all(10.0),
),
),




Container(
margin: EdgeInsets.all(15.0),
child: RaisedButton(
  onPressed: (){
   
  },
  child: Text(this.message,style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,),),
  color: Colors.lightGreen,
  padding: EdgeInsets.all(10.0),
),
),


  ],
  )
    );
  }
} 