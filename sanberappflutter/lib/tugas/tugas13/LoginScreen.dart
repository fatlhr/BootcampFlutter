// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sanberappflutter/tugas/tugas13/HomeScreen.dart';

import 'Navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Wrap(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 28,
                  ),
                  const Center(
                    child: Text(
                      "Sanber Flutter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.lightBlue),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(18),
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/flutter.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                      // child: Image.asset(
                      //   'assets/img/flutter.png',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  Container(
                    height: 64,
                    padding: const EdgeInsets.only(bottom: 14),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 2),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    padding: const EdgeInsets.only(bottom: 14),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 2),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Navigation();
                            },
                          ),
                        );
                      },
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(278, 42),
                          primary: Colors.lightBlue),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text(
                          "Doesn't have an account?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.lightBlue),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    child: GridView.count(
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 0,
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2),
                          height: 10,
                          child: Image.asset(
                            'assets/img/Monas.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 20,
                          child: Image.asset(
                            'assets/img/Monas.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
