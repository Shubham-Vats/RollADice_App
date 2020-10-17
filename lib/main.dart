import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() 
{
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Roll A Dice",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}