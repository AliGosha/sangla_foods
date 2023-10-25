import 'package:flutter/material.dart';
import 'package:sangla_foods/screens/Widgets/customButton.dart';

import 'Widgets/my_text_field.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Log In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                MyTextField(
                  hintText: "UserName",
                  icon: Icons.person_outline,
                  iconColor: Colors.white,
                  obsecureText: false,
                  controller: null,
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r'^[a-z A-Z]+$ ').hasMatch(value!)) {
                      return 'Please enter Last Name Correctly';
                    } else
                      return null;
                  },
                  KeyBoardType: TextInputType.name,
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  hintText: "PassWord",
                  icon: Icons.lock,
                  iconColor: Colors.white,
                  obsecureText: false,
                  controller: null,
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r'^[a-z A-Z]+$ ').hasMatch(value!)) {
                      return 'Please enter Last Name Correctly';
                    } else
                      return null;
                  },
                  KeyBoardType: TextInputType.number,
                )
              ],
            ),
            Center(
                child: customButton(
              name: "Login",
              textColor: Colors.white,
              color: Colors.red,
              width: 200,
              height: 50,
              FontSize: 25,
              fontWeight: FontWeight.bold,
              on_Pressesd: () {},
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New User?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: 2,
                ),
                Text(
                  "Register Now",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
