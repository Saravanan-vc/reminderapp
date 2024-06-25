// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reminderapp/Features/Login_Screen/View/Widgets/Add_Button.dart';
import 'package:reminderapp/Features/Login_Screen/View/Widgets/TextForm.dart';

class phoneLogin extends StatelessWidget {
  const phoneLogin({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: h * 0.05,
            ),
            Container(
              child: Image.asset(
                "Assets/loginimage.png",
                scale: 2,
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            textForm(),
            SizedBox(
              height: h * 0.07,
            ),
            adButton(),
          ],
        ),
      ),
    );
  }
}
