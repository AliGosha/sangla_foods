import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String? Function(String?) validator;
  final IconData icon;
  final Color iconColor;
  final bool obsecureText;
  final TextEditingController? controller;
  const MyTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.iconColor,
    required this.obsecureText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obsecureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          prefixIcon: Icon(icon, color: iconColor),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
    );
    ;
  }
}
