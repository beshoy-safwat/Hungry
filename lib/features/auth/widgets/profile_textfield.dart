import 'package:flutter/material.dart';

class ProfileTextfield extends StatelessWidget {
  const ProfileTextfield({
    super.key,
    required this.controller,
    required this.label,
  });
  final TextEditingController controller;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: true,
      canRequestFocus: false,
      style: TextStyle(color: Colors.white, fontSize: 18),
      decoration: InputDecoration(
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(color: Colors.white, fontSize: 17),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
