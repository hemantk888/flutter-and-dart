import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/test.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Home Screen",
        theme: ThemeData(
            primaryColor: Colors.green[600], accentColor: Colors.green[50]),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            flexibleSpace: SafeArea(
              child: Icon(
                Icons.photo_camera,
                size: 60,
                color: Colors.white,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Container(
                color: Colors.green[50],
                height: 50,
                width: double.infinity,
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              "Home",
              // style: TextStyle(fontFamily: 'MyFontb'),
            ),
          ),
          body: ListView(
            children: [
              W1()
              //put all classes and widgets here
            ],
            // itemExtent: 150,
            scrollDirection: Axis.vertical,
          ),
        )),
  );
}

// ---------------------------------------------------------------------------------
// Directionality(
//       textDirection: TextDirection.ltr,
//       child: ListView(
//         children: [
//           Container(
//               height: 100,
//               color: Colors.amber[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.blue),
//                 ),
//               )),
//           Container(
//               height: 100,
//               color: Colors.redAccent[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.red),
//                 ),
//               )),
//           Container(
//               height: 100,
//               color: Colors.blueAccent[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.yellow),
//                 ),
//               )),
//           Container(
//               height: 100,
//               color: Colors.cyanAccent[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.green),
//                 ),
//               )),
//           Container(
//               height: 100,
//               color: Colors.limeAccent[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.orange),
//                 ),
//               )),
//           Container(
//               height: 100,
//               color: Colors.pinkAccent[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.pink),
//                 ),
//               )),
//           Container(
//               height: 100,
//               color: Colors.tealAccent[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.brown),
//                 ),
//               )),
//           Container(
//               height: 100,
//               color: Colors.greenAccent[200],
//               child: Center(
//                 child: Text(
//                   "Laptop",
//                   textDirection: TextDirection.ltr,
//                   style: TextStyle(fontSize: 100, color: Colors.purple),
//                 ),
//               )),
//         ],
//       ))

// -----------------------------------------------------------------
// Container(
//   padding: EdgeInsets.only(right: 20, top: 50),
//   decoration: BoxDecoration(color: Colors.amber),
//   alignment: Alignment.topRight,
//   child: Column(
//     textDirection: TextDirection.ltr,
//     children: [
//       Expanded(
//           child: Text(
//         "Text1",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 25),
//       )),
//       Expanded(
//           child: Text(
//         "Text2",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 25),
//       )),
//       Expanded(
//           child: Text(
//         "Text3",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 25),
//       )),
//       Expanded(
//           child: Text(
//         "Text4",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 25),
//       )),
//       Expanded(
//           child: Text(
//         "Text5",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 25),
//       )),
//       Expanded(
//           child: Text(
//         "Text6",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 25),
//       )),
//     ],
//   ))

// ----------------------------------------------------------------------
// import 'package:flutter/material.dart';

// void main() {
//   runApp(Center(
//       child: Text(
//     "Checking text widget",
//     textDirection: TextDirection.ltr,
//     style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
//   )));
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.red,
//         canvasColor: Colors.green[100],
//         platform: TargetPlatform.iOS,
//       ),
//       home: MyHomePage(title: 'Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
