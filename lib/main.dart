import 'package:flutter/material.dart';

import 'flagwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FlagWidget(),
    );
  }
}

//class DemoWidget extends StatefulWidget {
//  @override
//  _DemoWidgetState createState() => _DemoWidgetState();
//}
//
//class _DemoWidgetState extends State<DemoWidget> {
//  int _counter = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Demo App"),
//      ),
//      body: Center(
//        child: Column(
//          children: <Widget>[
//            Text(
//              "Counter : $_counter",
//              style: TextStyle(color: Colors.deepPurple, fontSize: 22),
//            ),
//            RaisedButton(
//              child: Text("Click Here!"),
//              onPressed: () {
//                setState(() {
//                  _counter++;
//                });
//              },
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
