import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    this.hintText,
    this.onChanged,
    this.pass,
    this.inputtype,
  });

  String? hintText;
  Function(String)? onChanged;
  bool? pass;
  TextInputType? inputtype;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: pass == null ? false : pass!,
      keyboardType: inputtype == null ? TextInputType.text : inputtype!,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
