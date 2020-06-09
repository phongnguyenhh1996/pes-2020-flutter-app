import 'package:flutter/material.dart';
import 'screens/ListPlayer/ListPlayerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PES 2020 Player Stats',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ListPlayerScreen(title: 'PES 2020 Player Stats'),
    );
  }
}
