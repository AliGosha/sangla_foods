import 'package:flutter/material.dart';
import 'package:sangla_foods/screens/Widgets/customButton.dart';

class home_screen extends StatefulWidget {
  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            height: 15,
            child: Center(
              child: Image.asset("assets/images/hill_sangla.jpg"),
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  "Welcome To Sangla Foods",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Column(
                  children: [
                    Text(
                      "Order Food From Our restaurant and",
                      // style: TextStyle(
                      //     fontSize: 30 ,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.green
                      // ),
                    ),
                    Text(
                      "Make Reservations Real Time",
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
                customButton(
                  name: "Login",
                  textColor: Colors.white,
                  color: Colors.green,
                  width: 200,
                  height: 55,
                  FontSize: 25,
                  fontWeight: FontWeight.bold,
                  OnPressed: null,
                ),
                Container(
                  height: 15,
                ),
                customButton(
                  name: "SignUp",
                  textColor: Colors.white,
                  color: Colors.green,
                  width: 200,
                  height: 55,
                  FontSize: 25,
                  fontWeight: FontWeight.bold,
                  OnPressed: null,
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
