// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then(
      (_) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C4D0BAQH3ULtAlMdUWQ/company-logo_200_200/0/1594979443144?e=1651708800&v=beta&t=u2oXhWroRT6rV4C2DZYH3Mrneh5jsGOOGoTzi-oKP8M",
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 64),
            Text(
              "SanberShop",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
