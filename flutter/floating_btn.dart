import 'package:flutter/material.dart';

class FloatingBtn extends StatelessWidget {
  const FloatingBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        child: Text("çlick"),
        onPressed: () {
          print("button Pressed");
        },
        splashColor: Colors.amber,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
