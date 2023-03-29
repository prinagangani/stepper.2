import 'package:flutter/material.dart';
import 'package:stepper2/screens/homescreen/view/home_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
  );
}