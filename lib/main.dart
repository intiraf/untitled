import 'package:flutter/material.dart';
import 'package:untitled/screens/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'untitled',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


