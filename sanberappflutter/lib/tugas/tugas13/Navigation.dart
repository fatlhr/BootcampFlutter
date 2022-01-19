// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'AccountScreen.dart';
import 'HomeScreen.dart';
import 'SearchScreen.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;

  final List<Widget> screens = [
    HomeScreen(),
    AccountScreen(),
    SearchScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Wrap(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 100,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = HomeScreen();
                            currentTab = 0;
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 0
                                ? Colors.lightBlue
                                : Colors.grey,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.lightBlue
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 100,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = SearchScreen();
                            currentTab = 1;
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.search,
                            color: currentTab == 1
                                ? Colors.lightBlue
                                : Colors.grey,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.lightBlue
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 100,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = AccountScreen();
                            currentTab = 2;
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: currentTab == 2
                                ? Colors.lightBlue
                                : Colors.grey,
                          ),
                          Text(
                            "Account",
                            style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.lightBlue
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
