// 1. create list with items
import 'package:flutter/material.dart';

List<String> generateList() {
  var items = List.generate(1000, (index) => 'Item $index');
  return items;
}

// generate listview using build constructor

Widget getLongList() {
  var listItems = generateList();
  var dataList = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: () {
        showSBar(context, listItems[index]);

        // print("You have tapped ${listItems[index]}");
      },
    );
  });
  return dataList;
}

void showSBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text('You just tapped $item'),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        print('Undoing...');
      },
    ),
  );
  // Scaffold.of(context).showSnackBar(snackBar);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
