// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import '../main.dart';
import 'home.dart';
import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 30),
                  ),
                  Image.network(
                    "https://media-exp1.licdn.com/dms/image/C4D0BAQH3ULtAlMdUWQ/company-logo_200_200/0/1594979443144?e=1651708800&v=beta&t=u2oXhWroRT6rV4C2DZYH3Mrneh5jsGOOGoTzi-oKP8M",
                    height: 80,
                    width: 80,
                  ),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Card(
                      child: TextFormField(
                        controller: username,
                        validator: (t) {
                          if (t!.isEmpty) {
                            return "Please enter your username.";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Username",
                          labelText: "Username",
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Card(
                      child: TextFormField(
                        controller: password,
                        validator: (t) {
                          if (t!.isEmpty) {
                            return "Please enter your password.";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Password",
                          labelText: "Password",
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsetsDirectional.all(18),
                                  primary: Colors.green),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  var result = authController.login(
                                      username.text, password.text);
                                  if (result) {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => HomeView(),
                                    ));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text("Successfully logged in."),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text("Invalid login credentials."),
                                      ),
                                    );
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text("Invalid username or password."),
                                    ),
                                  );
                                }
                              },
                              child: Text("LOGIN"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ));
                          },
                          child: Text(
                            "create a new account",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
