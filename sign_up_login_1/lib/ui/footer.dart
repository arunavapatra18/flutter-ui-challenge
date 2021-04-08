import 'package:flutter/material.dart';

//Footer section with Button to Proceed
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ],
          ),
        ),
        Positioned(
          right: 30,
          bottom: 40,
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ),
      ],
    );
  }
}
