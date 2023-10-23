import 'package:flutter/material.dart';
import 'package:sangla_foods/screens/Widgets/customButton.dart';

import 'Widgets/my_text_field.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final globalKey = GlobalKey<FormState>();
  bool passToggle = true;
  TextEditingController firstName = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController confirmPassword = TextEditingController();

  void validation() {
    if (firstName.text.trim().isEmpty || firstName.text.trim() == null) {
      globalKey.currentState?.showSnackBar(
        SnackBar(
          content: Text("First Name is Empty"),
        ),
      );
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  MyTextField(
                    hintText: 'First Name',
                    icon: Icons.person_outline,
                    iconColor: Colors.white,
                    obsecureText: false,
                    controller: firstName,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    hintText: 'Last Name',
                    icon: Icons.person_outline,
                    iconColor: Colors.white,
                    obsecureText: false,
                    controller: lastname,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    hintText: 'Email',
                    icon: Icons.email_outlined,
                    iconColor: Colors.white,
                    obsecureText: false,
                    controller: email,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    hintText: "UserName",
                    icon: Icons.person_outline,
                    iconColor: Colors.white,
                    obsecureText: false,
                    controller: username,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    hintText: "Password",
                    icon: Icons.lock,
                    iconColor: Colors.white,
                    obsecureText: true,
                    controller: password,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // MyTextField(
                  //   hintText: "Confirm Password",
                  //   icon: Icons.lock,
                  //   iconColor: Colors.white,
                  //   obsecureText: true,
                  //   controller: confirmPassword,
                  // )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: customButton(
                    name: "Cancel",
                    textColor: Colors.white,
                    color: Colors.grey,
                    width: 130,
                    height: 50,
                    FontSize: 20,
                    fontWeight: FontWeight.bold,
                    on_Pressesd: () {},
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                      child: customButton(
                    name: "Register",
                    textColor: Colors.white,
                    color: Colors.red,
                    width: 130,
                    height: 50,
                    FontSize: 20,
                    fontWeight: FontWeight.bold,
                    on_Pressesd: () {
                      validation();
                    },
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
