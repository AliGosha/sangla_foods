import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sangla_foods/screens/Widgets/customButton.dart';

import 'Widgets/my_text_field.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Future loginAuth() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("This user is not Registered"),
          ),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Please Enter Correct Password"),
          ),
        );
      }
    }
  }

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
                  hintText: "Email",
                  icon: Icons.person_outline,
                  iconColor: Colors.white,
                  obsecureText: false,
                  controller: email,
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$ ')
                            .hasMatch(value!)) {
                      return 'Please enter Correct email';
                    } else
                      return null;
                  },
                  KeyBoardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  hintText: "Password",
                  icon: Icons.lock,
                  iconColor: Colors.white,
                  obsecureText: false,
                  controller: password,
                  validator: (value) {
                    if (value!.isEmpty ||
                        RegExp(r'(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$ ')
                            .hasMatch(value!)) {
                      return 'Please enter correct password';
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
