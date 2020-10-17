import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int leftdienumber=1;
  int rightdienumber=1;


  void roll(){
    setState(() {
      leftdienumber=Random().nextInt(6)+1;
      rightdienumber=Random().nextInt(6)+1;
    }); 
    print("Rolling Occur");   
  }  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Dice Roll",
            //textAlign: TextAlign.start,
            style: TextStyle(
              //color:Colors.yellow,
              fontFamily: "Times New Roman",
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              fontSize: 25.0,
            ), 
          ),
          centerTitle: true,
        ), 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image(
                        image: AssetImage("assets/images/die_face_$leftdienumber.png")
                      ),
                    )
                  ),
                  Expanded(//flex: 2,
                    child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image(
                      image: AssetImage("assets/images/die_face_$rightdienumber.png")
                      ),
                    )
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: RaisedButton(
                  onPressed: roll,
                  shape: StadiumBorder(),
                  child: Text("ROLL",
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontSize: 18.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.red[500],
                  textColor: Colors.white,
                  highlightColor: Colors.lightBlue,
                  //splashColor: Colors.white,
                  elevation: 15.0,
                  highlightElevation: 5.0,
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0),
                  //shape: Border.all(width: 1.0, color: Colors.yellow)
                ),
              ),
            ],
          ),
        ),     
      ),
    );
  }
}