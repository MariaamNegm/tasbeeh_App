import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tasbeh/tab1.dart';
import 'package:tasbeh/tab2.dart';
import 'HomeScreen.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:AnimatedSplashScreen(
        duration: 4000,
        splash: Image.asset("images/mecca.jpg"),
        nextScreen:HomeScreen(),
        //calling the page which have the tab bar view as next screen
        splashIconSize:double.infinity,
        //make the icon to cover all space around
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor:Colors.black87,
      )
    );
  }
}




