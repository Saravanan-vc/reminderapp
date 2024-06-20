import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/Features/Addtask_screen/View_Model/Models/TaskModel.dart';

class Controller extends GetxController {
  //connecting with firebase database
  FirebaseFirestore fireBaseFirestore = FirebaseFirestore.instance;
  late CollectionReference Taskcollection;

  //creating a list to get a data from databases
  List<Task> Taskslist = [];

  @override
  Future<void> onInit() async {
    Taskcollection = fireBaseFirestore.collection("ReminderTask");
    await getdata();
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

  //Delet the data from databases
  Deletedata(String id) async {
    try {
      await Taskcollection.doc(id).delete();
      getdata();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  //geting data from databases
  getdata() async {
    try {
      QuerySnapshot Tasksnapshort = await Taskcollection.get();
      List<Task> collectdata = Tasksnapshort.docs
          .map((doc) => Task.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      Taskslist.clear();
      Taskslist.assignAll(collectdata);
    } catch (e) {
      Get.snackbar("Eroor", e.toString());
    } finally {
      update();
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
    } finally {
      update();
    }
    getdata();
    Taskcontroller.clear();
    Datecontroller.clear();
    Discriptincontroller.clear();
  }
}
