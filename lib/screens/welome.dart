
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class home_screen extends StatelessWidget{
  Widget CustomButton(@required name, Color color,@required Color textColor ){
    return
      Container(
        height: 45,
        width: 300,
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
      body: Column(
        children: [
          Expanded(child: Container(
            height: 15,
            child: Center(
              child: Image.asset("assets/images/hill_sangla.jpg"),
            ),
          )),
          Expanded(child: Container(
        child: Column(
          children: [
            Text("Welcome To Sangla Foods",
              style: TextStyle(
                fontSize: 30 ,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),

            ),
            Column(
              children: [
                Text("Order Food From Our restaurant and",
                  // style: TextStyle(
                  //     fontSize: 30 ,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.green
                  // ),

                ),
                Text("Make Reservations Real Time",
                  // style: TextStyle(
                  //     fontSize: 30 ,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.green
                  // ),

                ),
              ],
            ),
            Container(
              height: 150,
            ),
            CustomButton("Login", Colors.green, Colors.white),
            Container(
              height: 15,
            ),
            CustomButton("SignUp", Colors.transparent, Colors.white)

          ],
        ),
          )),

        ],
      ),
    );
  }
}