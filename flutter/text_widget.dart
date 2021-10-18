import 'package:flutter/material.dart';

class DemoTextWidget extends StatelessWidget {
  const DemoTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Text Widget',
      style: TextStyle(
          fontSize: 25.0,
          color: Colors.deepPurple,
          decoration: TextDecoration.underline,
          decorationColor: Colors.deepPurpleAccent,
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 3.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    );
  }
}
