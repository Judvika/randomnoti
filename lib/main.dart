import 'package:flutter/material.dart';
import 'notification.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('hello'),),
        body: Text('hello body'),
        bottomNavigationBar: BottomAppBar(
          child: Text('hello bottom'),
        ),
      ),
    );
  }
}
