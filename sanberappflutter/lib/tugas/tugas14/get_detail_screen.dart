// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetDetailScreen extends StatefulWidget {
  int? value;
  GetDetailScreen({Key? key, this.value}) : super(key: key);

  @override
  _GetDetailScreenState createState() => _GetDetailScreenState(value);
}

class _GetDetailScreenState extends State<GetDetailScreen> {
  int? value;
  _GetDetailScreenState(this.value);
  Map? data;
  String? uri;
  @override
  void initState() {
    var url = "https://reqres.in/api/users/${value.toString()}";
    _getRefreshData(url);
  }

  Future<void> _getRefreshData(url) async {
    getJsonData(context, url);
  }

  Future<void> getJsonData(BuildContext context, url) async {
    setState(() {
      uri = url;
    });
    var response = await http.get(
      Uri.parse(uri.toString()),
      headers: {"Accept": "application/json"},
    );
    print(response.body);
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get data API regress"),
      ),
      body: Container(
        child: data == null
            ? Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Loading...",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(
                child: ListTile(
                  leading: Image.network(data!["avatar"]),
                  title: Text(data!["first_name"] + " " + data!["last_name"]),
                  subtitle: Text(data!["email"]),
                ),
              ),
      ),
    );
  }
}
