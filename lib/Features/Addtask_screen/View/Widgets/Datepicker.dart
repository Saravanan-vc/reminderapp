// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:reminderapp/Features/Addtask_screen/View_Model/controller.dart';

class datePicker extends StatelessWidget {
  const datePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(builder: (logic) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            label: Text("Date"),
            prefixIcon: Icon(Icons.calendar_today_rounded),
            focusedBorder: OutlineInputBorder(),
            fillColor: Colors.grey.shade300,
            filled: T,
          ),
          controller: logic.Datecontroller,
          readOnly: T,
          onTap: () {
            logic.date();
          },
        ),
      );
    });
  }
}
