import 'package:flutter/material.dart';
import 'package:portfolio_tow/about.dart';
import 'package:portfolio_tow/home_screen.dart';
import 'package:portfolio_tow/project.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      //home: HomeScreen(),
     initialRoute: 'HomeScreen',
     routes: {
        'HomeScreen': (context) => HomeScreen(),
       'About':(context) =>About(),
       'project':(context) => MyProject(),

     },
    );
  }
}


