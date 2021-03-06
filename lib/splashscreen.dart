import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:fitness_app/pages/root-page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

Map<int, Widget> op = {1: RootPage()};
Function duringSplash = () {
  return 1;
};

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplash(
        imagePath: 'assets/gifs/splashScreen.gif',
        home: RootPage(),
        customFunction: duringSplash,
        duration: 2300, //TODO: May need to update duration
        type: AnimatedSplashType.BackgroundProcess,
        outputAndHome: op,
      ),
    );
  }
}
