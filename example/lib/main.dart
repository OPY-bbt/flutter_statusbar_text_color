import 'package:flutter/material.dart';
import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  setStatusBarTextColor(style) async {
    try {
      await FlutterStatusbarTextColor.setTextColor(style);
    } catch (e) {
      print('set status bar text color failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("light"),
                  onPressed: () {
                    setStatusBarTextColor(FlutterStatusbarTextColor.light);
                  },
                ),
                RaisedButton(
                  child: Text("dark"),
                  onPressed: () {
                    setStatusBarTextColor(FlutterStatusbarTextColor.dark);
                  },
                ),
                RaisedButton(
                  child: Text("default"),
                  onPressed: () {
                    setStatusBarTextColor(null);
                  },
                )
              ],
            ),
          )),
    );
  }
}
