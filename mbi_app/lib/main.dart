import 'package:flutter/material.dart';
import 'package:mbi_app/view/screens/splashScreen.dart';

void main(){
  runApp(bmiApp());
}


class bmiApp extends StatefulWidget {
  const bmiApp({super.key});


  @override
  State<bmiApp> createState() => _bmiAppState();
}

class _bmiAppState extends State<bmiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI App',
    home: SplashScreen());
  }
}

