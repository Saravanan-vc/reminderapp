// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class textField extends StatelessWidget {
  final String label;
  final int lines;
  dynamic controller;
  textField({
    super.key,
    required this.label,
    required this.lines,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(label),
          enabled: T,
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
        maxLines: lines,
        controller: controller,
      ),
    );
  }
}
