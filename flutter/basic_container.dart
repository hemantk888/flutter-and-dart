import 'package:flutter/material.dart';

class BasicContainerDemo extends StatelessWidget {
  const BasicContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.elliptical(45, 90),
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(10)),
          gradient: LinearGradient(
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
              colors: [Colors.amber, Colors.pink, Colors.purple]),
          boxShadow: [
            BoxShadow(
                color: Colors.green,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0)),
          ]),
    );
  }
}
