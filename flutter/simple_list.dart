import 'package:flutter/material.dart';

Widget getList() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.alarm),
        title: Text('Time to Wakeup'),
        subtitle: Text('Go to College'),
        trailing: Icon(Icons.access_alarm_outlined),
      ),
      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text('AC to be repaired'),
      ),
      ListTile(
        leading: Icon(Icons.account_balance),
        title: Text('Go to bank'),
        subtitle: Text('Fill up the passbook'),
        trailing: Icon(Icons.access_alarm_outlined),
      ),
      Text("Search for e-books"),
      Container(
        color: Colors.greenAccent,
        width: 50,
        height: 20,
      )
    ],
  );
  return listView;
}
