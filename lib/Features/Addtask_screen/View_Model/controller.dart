import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/Features/Addtask_screen/View_Model/Models/TaskModel.dart';

class Controller extends GetxController {
  //connecting with firebase database
  FirebaseFirestore fireBaseFirestore = FirebaseFirestore.instance;
  late CollectionReference Taskcollection;

  @override
  void onInit() {
    Taskcollection = fireBaseFirestore.collection("ReminderTask");
    super.onInit();
  }

  //controllers
  TextEditingController Datecontroller = TextEditingController();
  TextEditingController Taskcontroller = TextEditingController();
  TextEditingController Discriptincontroller = TextEditingController();

  //Date logic workout
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

  //add the task to server
  Addtask() {
    try {
      DocumentReference Doc = Taskcollection.doc();
      Task task = Task(
        id: Doc.id,
        task: Taskcontroller.text,
        Description: Discriptincontroller.text,
        Date: Datecontroller.text,
      );
      final tasktojson = task.toJson();
      Doc.set(tasktojson);
      Get.snackbar("Sucess", "Add to databases");
    } catch (e) {
      Get.snackbar(e.toString(), "Failed");
      print(e);
    }
  }
}
