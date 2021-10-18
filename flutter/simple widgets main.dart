import 'package:flutter/material.dart';
import 'package:orientation/dynamic_widgetbuilder.dart';

void main() {
  runApp(OrientationTest());
}

class OrientationTest extends StatelessWidget {
  const OrientationTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Orientation CHeck",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Orientation test"),
        ),
        body: SafeArea(child: DynamicBuilderView()
            // SingleChildScrollView(child: DynamicBuilderView()
            // Column(
            //   children: [
            //     DynamicWidget(),
            //     // DynamicBuilderView()
            //   ],
            // ),
            // ),
            ),
      ),
    );
  }
}

class DynamicWidget extends StatelessWidget {
  const DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
        ? Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera,
                  size: 50,
                ),
                Icon(
                  Icons.gamepad,
                  size: 50,
                )
              ],
            ),
          )
        : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit,
                  size: 50,
                ),
                Icon(
                  Icons.brush,
                  size: 50,
                )
              ],
            ),
          );
  }
}
