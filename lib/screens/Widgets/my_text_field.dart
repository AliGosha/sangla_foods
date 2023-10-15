import 'dart:ffi';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color iconColor;
  final bool obsecureText;
  const MyTextField({super.key,required this.hintText, required this.icon, required this.iconColor, required this.obsecureText  });

  @override
  Widget build(BuildContext context) {

    return
      TextFormField(
        obscureText: obsecureText,
        style:
        TextStyle(
          color: Colors.white
        ),
      decoration: InputDecoration(
          prefixIcon: Icon(icon, color: iconColor),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.white
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              )
          )
      ),
    );;
  }
}
