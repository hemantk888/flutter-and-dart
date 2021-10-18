import 'package:flutter/material.dart';
import 'package:my_app/simple_drop_down.dart';

import 'dropdown_map.dart';

class FavSport extends StatefulWidget {
  const FavSport({Key? key}) : super(key: key);

  @override
  _FavSportState createState() => _FavSportState();
}

class _FavSportState extends State<FavSport> {
  String sportName = "";
  @override
  Widget build(BuildContext context) {
    print("Stateful Widget created");
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String inputData) {
                // sportName = inputData;
                setState(() {
                  print("Set State is called");
                  sportName = inputData;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "Your Favourite Sport is $sportName",
                  style: TextStyle(fontSize: 20.0),
                )),
            MyDropdownButton(),
            MapDropDownButton()
          ],
        ),
      ),
    );
  }
}
