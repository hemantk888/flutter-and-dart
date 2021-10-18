import 'package:flutter/material.dart';

class DynamicBuilderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      return orientation == Orientation.portrait
          ? Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  border: Border.all(style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text("Portrait mode"),
            )
          : Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  border: Border.all(style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text("Landscape mode"),
            );
    });
  }
}
