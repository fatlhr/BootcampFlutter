import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/HomeScreen.dart';
import 'package:sanberappflutter/tugas/tugas13/LoginScreen.dart';

import 'tugas/tugas13/Navigation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
