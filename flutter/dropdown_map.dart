import 'package:flutter/material.dart';

class MapDropDownButton extends StatefulWidget {
  const MapDropDownButton({Key? key}) : super(key: key);

  @override
  _MapDropDownButtonState createState() => _MapDropDownButtonState();
}

class _MapDropDownButtonState extends State<MapDropDownButton> {
  var _countries = ['India', 'Australia', 'USA', 'Russia', 'Others'];
  var _ctry = "India";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _countries.map((e) {
        return DropdownMenuItem(value: e, child: Text(e));
      }).toList(),
      onChanged: (dynamic val) {
        setState(() {
          _ctry = val;
        });
      },
      value: _ctry,
    );
  }
}
