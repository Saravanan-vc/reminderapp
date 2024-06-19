// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/Features/Addtask_screen/Model/options.dart';
import 'package:reminderapp/Features/Addtask_screen/View_Model/controller.dart';
import 'package:reminderapp/Features/Home_screen/View/pages/Home_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const MyApp());
  Get.put(
    Controller(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: homeScreen(),
    );
  }
}
