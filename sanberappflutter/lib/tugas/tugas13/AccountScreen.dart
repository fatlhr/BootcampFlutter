// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Screen"),
      ),
      body: Center(
        child: Text("Account"),
      ),
    );
  }
}
