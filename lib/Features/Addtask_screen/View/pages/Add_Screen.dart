// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:reminderapp/Features/Addtask_screen/View/Widgets/Addbutton.dart';
import 'package:reminderapp/Features/Addtask_screen/View/Widgets/Datepicker.dart';
import 'package:reminderapp/Features/Addtask_screen/View/Widgets/Textfiel.dart';

class addScreen extends StatelessWidget {
  const addScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
        centerTitle: T,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            textField(
              label: "Task",
              lines: 1,
            ),
            textField(
              label: "Description",
              lines: 4,
            ),
            datePicker(),
            SizedBox(
              height: 120,
            ),
            addButton(),
          ],
        ),
      ),
    );
  }
}
