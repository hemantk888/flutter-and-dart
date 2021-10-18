import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const _methodChannel =
      const MethodChannel('ourChannel.fd.com/deviceinfo');
  String _deviceInfo = ' ';
  @override
  void initState() {
    super.initState();
    _getDeviceInfo();
  }

  Future<void> _getDeviceInfo() async {
    String deviceInfo;
    try {
      deviceInfo = await _methodChannel.invokeMethod('_getDeviceInfo');
    } on PlatformException catch (e) {
      deviceInfo = "Failed to get Device Info ${e.message}";
    }
    setState(() {
      _deviceInfo = deviceInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SafeArea(
            child: ListTile(
      title: Text(
        'Device Info',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        _deviceInfo,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      contentPadding: EdgeInsets.all(16.0),
    )));
  }
}
