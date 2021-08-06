import 'package:flutter/material.dart';
import 'package:medical_app/ui/detail.dart';

void main() {
  runApp(MyApp());
}

Color backgroundColor = Color(0xff27272c);
Color deepDarkColor = Color(0xff17171b);
Color deepPurpleColor = Color(0xff9292e4);
Color lightPurpleColor = Color(0xffb9b9e3);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quang Tran',
      debugShowCheckedModeBanner: false,
      home: Detail(),
    );
  }
}

