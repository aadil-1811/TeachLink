import 'dart:async';

import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
@override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/loginPage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff98efa0),
            Color(0xff48df81)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          )
        ),
          child: Center(
              child: Image.asset('images/splash_logo.png'),
          ),
      ),
        
      );
  }
}
