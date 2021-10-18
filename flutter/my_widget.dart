import 'package:flutter/material.dart';

import 'floating_btn.dart';
import 'our_button.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lightBlueAccent,
        child: Column(children: [
          Center(
            child: Text(
              "Hello Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'KleeOne'),
            ),
          ),
          Image.asset(
            'images/temple.jpg',
            height: 200,
            width: 300,
          ),
          OurButton(),
          FloatingBtn()
        ]));
  }
}
