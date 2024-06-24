// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reminderapp/Features/Home_screen/View/pages/Home_Screen.dart';

class SplashScreenl extends StatefulWidget {
  const SplashScreenl({super.key});

  @override
  State<SplashScreenl> createState() => _SplashScreenlState();
}

class _SplashScreenlState extends State<SplashScreenl> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => homeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text("Splash_Screen"),
      )),
    );
  }
}
