import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  //connecting with firebase database
  FirebaseFirestore fireBaseFirestore = FirebaseFirestore.instance;
  late CollectionReference Task;

  @override
  void onInit() {
    Task = fireBaseFirestore.collection(" ");
    super.onInit();
  }
  //add the task to server
  Addtask(){
    // DocumentReference Doc = Task.doc();

  }

  //Date logic workout
  TextEditingController Datecontroller = TextEditingController();
  Future<void> date() async {
    dynamic picker = await showDatePicker(
      context: Get.context!,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      initialDate: DateTime.now(),
    );
    if (picker != Null) {
      Datecontroller.text = picker.toString().split(" ")[0];
    }
  }
}
