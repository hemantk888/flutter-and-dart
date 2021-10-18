import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.redAccent.shade400),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Camera",
          // style: TextStyle(color: Colors.black),
        ),
      ),
      body: NativeStuff(),
    ),
  ));
}

class NativeStuff extends StatefulWidget {
  const NativeStuff({Key? key}) : super(key: key);

  @override
  _NativeStuffState createState() => _NativeStuffState();
}

class _NativeStuffState extends State<NativeStuff> {
  static const platformMethodChannel = const MethodChannel("myChannel");
  String nativeMessage = "";
  String camMsg = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.teal,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: IconButton(
                onPressed: _managePower,
                icon: Icon(
                  Icons.power_settings_new,
                ),
                iconSize: 50,
                color: Colors.blue[400],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Center(
                child: Text(nativeMessage,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 23))),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: IconButton(
                onPressed: _openCamera,
                icon: Icon(Icons.camera),
                iconSize: 50,
                color: Colors.blue[400],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<String> _managePower() async {
    String _message;
    try {
      final String result =
          await platformMethodChannel.invokeMethod("powerManage");
      _message = result;
    } on PlatformException catch (e) {
      _message = "Can't do native stuff ${e.message}";
    }
    return _message;
  }

  Future<String> _openCamera() async {
    String _msg = "";
    try {
      await platformMethodChannel.invokeMethod("openCamera");
    } on PlatformException catch (e) {
      _msg = "Can't do native stuff ${e.message}";
    }
    return _msg;
  }
}
