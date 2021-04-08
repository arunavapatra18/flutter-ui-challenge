import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

//Login Form
class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome back, ",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Enter your email and password or"),
          Text("login with a social account"),
          SizedBox(
            height: 50,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email address",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              IconButton(icon: Icon(FontAwesome.facebook), onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              IconButton(icon: Icon(FontAwesome.google), onPressed: () {}),
            ],
          ),
          SizedBox(
            height: 68,
          )
        ],
      ),
    );
  }
}
