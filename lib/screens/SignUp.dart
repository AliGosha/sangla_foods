import 'package:flutter/material.dart';

import 'Widgets/my_text_field.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget CustomButton(@required name, Color color,@required Color textColor,
      @required double Width, @required double Height ){
    return
      Container(
        height: Height,
        width: Width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: (){},
          child: Text(name,
            style: TextStyle(
              fontSize: 20,
              color: textColor,

            ),
          ),),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){

        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                MyTextField(hintText: 'First Name', icon:Icons.person_outline, iconColor: Colors.white, obsecureText: false ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(hintText: 'Last Name', icon:Icons.person_outline, iconColor: Colors.white, obsecureText: false ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(hintText: 'Email', icon:Icons.email_outlined, iconColor: Colors.white, obsecureText: false ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(hintText:"UserName", icon:Icons.person_outline, iconColor: Colors.white, obsecureText: false),
                SizedBox(
                  height: 10,
                ),
                MyTextField(hintText:"Password",icon: Icons.lock,iconColor: Colors.white, obsecureText: true),
                SizedBox(
                  height: 10,
                ),
                MyTextField(hintText:"Confirm Password",icon: Icons.lock,iconColor: Colors.white, obsecureText: true)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CustomButton("Cancel", Colors.grey, Colors.black, 125,40)),
                SizedBox(
                  width: 20,
                ),
                Center(child: CustomButton("Register", Colors.red, Colors.white, 125,40)),
              ],
            ),




          ],
        ),
      ),
    );
  }
}
