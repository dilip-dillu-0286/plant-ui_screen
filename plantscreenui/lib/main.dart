import 'package:flutter/material.dart';
import 'package:plantscreenui/detailscreen.dart';
import 'package:plantscreenui/homescrren.dart';
import 'package:plantscreenui/recomended.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green, accentColor: Colors.green),
      home: homescrren(),
    );
  }
}
