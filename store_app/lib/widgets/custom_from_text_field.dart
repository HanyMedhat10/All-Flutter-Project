// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  String? hintText;
  Function(String)? onChanged;
  TextInputType? inputType;
  CustomFormTextField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.inputType,
  }) : super(key: key);
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
    );
  }
}
