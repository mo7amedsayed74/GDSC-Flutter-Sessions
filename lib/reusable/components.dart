import 'package:flutter/material.dart';

Widget DefaultTextFormField({
  required String labelText,
  required String hintText,
  required IconData icon,
  required TextInputType inputType,
}) {
  return TextFormField(
    //maxLength: 8,
    validator: (value) {
      if (value!.isEmpty) {
        return 'can not be empty';
      }
      // valid
      return null;
    },
    keyboardType: inputType,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      hintText: hintText,
      labelText: labelText,
      //filled: true,
      //fillColor: Colors.yellowAccent,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          width: 1,
          color: Colors.teal,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}