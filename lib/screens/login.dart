import 'package:flutter/material.dart';

import 'Widgets/my_text_field.dart';

class Login_Page extends StatelessWidget {
  Widget CustomButton(@required name, Color color,@required Color textColor, @required double Width ){
    return
      Container(
        height: 45,
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
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Log In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            ),
            Column(
              children: [
                MyTextField(hintText:"UserName", icon:Icons.person_outline, iconColor: Colors.white, obsecureText: false,),
                SizedBox(
                  height: 20,
                ),
                MyTextField(hintText:"PassWord",icon: Icons.lock,iconColor: Colors.white, obsecureText: false)
              ],
            ),
            Center(child: CustomButton("Login", Colors.red, Colors.white, 200)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New User?",
                  style:TextStyle(
                      color:Colors.grey,

                  ) , ),
                Container(
                  width: 2,
                ),
                Text("Register Now",
                  style:TextStyle(
                    color:Colors.red,

                  ) , )
              ],
            )



          ],
        ),
      ),
    );
  }
}
