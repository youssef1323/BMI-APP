import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=> homeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      body: Center(
        child: Image.asset("assets/img.png", width: size.width * 0.5)
            .animate()
            .fadeIn(duration: Duration(seconds: 2))
            .fadeOut(
          delay: Duration(seconds: 2),
          duration: Duration(seconds: 2),
        ),
      ),
    );
  }
}