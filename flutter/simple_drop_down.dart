import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({Key? key}) : super(key: key);

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  dynamic _value = 1;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _value,
      items: [
        DropdownMenuItem(child: Text("BCA"), value: 1),
        DropdownMenuItem(child: Text("MCA"), value: 2),
        DropdownMenuItem(child: Text("BBA"), value: 3),
        DropdownMenuItem(child: Text("BA"), value: 4),
      ],
      onChanged: (value) {
        // _value = value;
        setState(() {
          _value = value;
        });
      },
    );
  }
}
