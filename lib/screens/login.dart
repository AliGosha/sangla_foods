import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sangla_foods/screens/Widgets/customButton.dart';

import 'Widgets/my_text_field.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  RegExp regExp = new RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  Future signInWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _email.text, password: _password.text)
          .then((value) => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Successfully logged-in.'),
                  ),
                ),
                print(value)
              })
          .onError((error, stackTrace) => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('No user found for that email.'),
                  ),
                ),
              });
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'user-not-found') {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please enter correct email/password'),
          ),
        );
      } else if (e.code == 'wrong-password') {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Wrong password provided for that user.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
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
                        icon: Icons.email_outlined,
                        iconColor: Colors.white,
                        obsecureText: false,
                        controller: _email,
                        KeyBoardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (_email.text.trim().isEmpty ||
                              _email.text.trim() == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Email is Empty"),
                              ),
                            );
                            return;
                          } else if (!regExp.hasMatch(_email.text)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Please enter vaild Email",
                                ),
                              ),
                            );
                            return;
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                      hintText: "Password",
                      icon: Icons.lock,
                      iconColor: Colors.white,
                      obsecureText: true,
                      controller: _password,
                      KeyBoardType: TextInputType.number,
                      validator: (value) {
                        if (_password.text.trim().isEmpty ||
                            _password.text.trim() == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Password is Empty"),
                            ),
                          );
                          return;
                        } else {
                          signInWithEmailAndPassword();
                        }
                      },
                    ),
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
                  on_Pressesd: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formkey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Verifying Data please wait..')),
                      );
                    }
                  },
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
        ),
      ),
    );
  }
}
