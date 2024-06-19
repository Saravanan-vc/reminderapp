// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/Features/Addtask_screen/View/pages/Add_Screen.dart';
import 'package:reminderapp/Features/Home_screen/View/Widgets/List_view.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
        centerTitle: true,
      ),
      body: listView_card(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            addScreen(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
