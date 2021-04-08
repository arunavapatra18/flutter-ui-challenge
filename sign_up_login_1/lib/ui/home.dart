import 'package:flutter/material.dart';

import 'footer.dart';
import 'signup.dart';
import 'login.dart';

// Main Landing Page: SignUp
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Change flag for LogIn and SignUp form
  bool changeToLogIn = false;

  // Get the required form
  Widget getForm(bool change) {
    if (change) {
      return LogIn();
    }
    return SignUpForm();
  }

  // Variables for styling buttons : Login and SignUp
  TextStyle login = TextStyle(fontSize: 16, color: Colors.black54);
  TextStyle signup =
      TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            /*
              HEAD AREA WITH LOGIN AND SIGNUP BUTTONS
            */
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              login = TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16);
                              signup = TextStyle(
                                  fontSize: 16, color: Colors.black54);
                              changeToLogIn = true;
                            });
                          },
                          child: Text(
                            "Login",
                            style: login,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                signup = TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16);
                                login = TextStyle(
                                    fontSize: 16, color: Colors.black54);
                                changeToLogIn = false;
                              });
                            },
                            child: Text(
                              "Sign Up",
                              style: signup,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15.0,
                          spreadRadius: 10.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.red[400],
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
            getForm(changeToLogIn),
            SizedBox(
              height: 50,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
