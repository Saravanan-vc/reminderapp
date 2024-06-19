// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class textField extends StatelessWidget {
  final String label;
  final int lines;
  const textField({super.key, required this.label, required this.lines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            enabled: T,
            enabledBorder: OutlineInputBorder(),
            label: Text(label),
            focusedBorder: OutlineInputBorder()),
        maxLines: lines,
      ),
    );
  }
}
