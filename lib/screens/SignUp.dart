import 'package:flutter/material.dart';
import 'package:sangla_foods/screens/Widgets/customButton.dart';

import 'Widgets/my_text_field.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            RegExp(r'^[a-z A-Z]+$ ').hasMatch(value!)) {
                          return 'Please enter First Name Correctly';
                        } else
                          return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            RegExp(r'^[a-z A-Z]+$ ').hasMatch(value!)) {
                          return 'Please enter Last Name Correctly';
                        } else
                          return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            RegExp(r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$ ')
                                .hasMatch(value!)) {
                          return 'Please enter Your Email Correctly';
                        } else
                          return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            RegExp(r'(?=[a-zA-Z0-9._]{8,20}$)(?!.*[_.]{2})[^_.].*[^_.]$ ')
                                .hasMatch(value!)) {
                          return 'Please enter UserName Correctly';
                        } else
                          return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            RegExp(r'(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$ ')
                                .hasMatch(value!)) {
                          return 'Please enter Password Correctly';
                        } else
                          return null;
                      },
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
                      on_Pressesd: () {},
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
