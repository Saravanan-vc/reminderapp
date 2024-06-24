// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/Features/Addtask_screen/View_Model/controller.dart';

class listView_card extends StatelessWidget {
  const listView_card({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      builder: (logic) => ListView.builder(
        itemCount: logic.Taskslist.length,
        itemBuilder: (context, index) => Dismissible(
          key: Key(logic.Taskslist[index].id.toString()),
          child: Card(
            // color: logic.color(
            //   int.parse(logic.Taskslist[index].Date!.replaceAll("-", '')),
            // ),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(logic.Taskslist[index].task ?? ''),
                  Text(logic.Taskslist[index].Date ?? ''),
                ],
              ),
              subtitle: Text(logic.Taskslist[index].Description ?? ''),
            ),
          ),
          onDismissed: (direction) {
            print(int.parse(logic.Taskslist[index].Date!.replaceAll("-", '')));
            print(int.parse(
                DateTime.now().toString().split(" ")[0].replaceAll("-", '')));
            logic.Deletedata(logic.Taskslist[index].id.toString());
          },
        ),
      ),
    );
  }
}
