import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  @override
   _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   
   AssetImage one = AssetImage("images/one.png");
   AssetImage two = AssetImage("images/two.png");
   AssetImage three = AssetImage("images/three.png");
   AssetImage four = AssetImage("images/four.png");
   AssetImage five = AssetImage("images/five.png");
   AssetImage six = AssetImage("images/six.png");
   AssetImage seven = AssetImage("images/dice.png");

    AssetImage diceimage ;
    AssetImage dice;

   @override
   void initState(){
     super.initState();
     setState(() {
      diceimage = seven;
    dice = seven;
     });
   }

   void rollDice(){

     int rnd = (1+ Random().nextInt(6));
     switch (rnd) {
       case 1:
         diceimage = one ;
         dice = three;
       break;

       case 2:
          diceimage = two ;
          dice  = four;
       break;

       case 3:
          diceimage = three ;
          dice = two;
       break;

       case 4:
        diceimage = four ;
        dice = six ;
         break;

       case 5:
        diceimage = five ;
        dice = one;
       break;

       case 6:
        diceimage = six ;
        dice = five;
       break;  
     }

     setState(() {
      //diceimage = diceimage;
     // dice = dice;
     });

   }
   @override
   Widget build(BuildContext context) {      
                return 
                Scaffold(
                  appBar: AppBar( title : Text("Dice roller"),),
                  body : 
                Center(  
                    child:
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[                        
                          Row(
                            children: <Widget>[

                          Container(
                             margin : EdgeInsets.only( left: 40.0)
                          ),

                        Image(
                          image : diceimage,
                      width : 150.0,
                      height : 200.0,
                            ),

                            Container(
                       margin : EdgeInsets.all(20.0),     
                            ),

                       Image(
                          image : dice,
                      width : 150.0,
                      height : 200.0,
                            ),
                            ],),

                      
                        Container(
                             margin : EdgeInsets.only(top: 200.0)         
                            ),
            
              RaisedButton(

                child: Text("click to roll" ,style: TextStyle(color:Colors.black,fontSize: 20.0),),

                color : Colors.blueGrey,

                splashColor: Color(0xff00FFFF),
                
                padding :EdgeInsets.fromLTRB(70.0, 15.0, 70.0, 15.0),

                onPressed : rollDice,

                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(20.0),
                ),
            ),    
        ],),        
                ),
                );
  }
} 