// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:reminderapp/Features/Otp_Screen/View/Pages/otp_Screen.dart';

class adButton extends StatelessWidget {
  const adButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => optScreen(),
          ),
        );
      },
      child: Container(
        width: 100,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Colors.black,
              offset: Offset(-1, 4),
            )
          ],
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Text(
          "Done",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
