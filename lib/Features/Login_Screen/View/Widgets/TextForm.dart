// ignore_for_file: prefer_const_constructors

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class textForm extends StatelessWidget {
  textForm({super.key});

  Country country = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: " ",
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          label: Text("Phone"),
          enabled: T,
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.7),
            child: Container(
              child: Text(
                "${country.flagEmoji} + ${country.phoneCode}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
