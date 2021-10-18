import 'package:flutter/material.dart';

class DemoRichTextWidget extends StatelessWidget {
  const DemoRichTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'RichText',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepPurpleAccent,
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 3.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal),
            children: [
          TextSpan(text: 'is special'),
          TextSpan(
              text: 'text widget',
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold))
        ]));
  }
}
