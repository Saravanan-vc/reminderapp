// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/Features/Addtask_screen/View_Model/controller.dart';

class addButton extends StatelessWidget {
  const addButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(builder: (logic) {
      return Material(
        elevation: 4,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        child: GestureDetector(
          onTap: () {
            logic.Addtask();
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple.shade300,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Add Task",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
