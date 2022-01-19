import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.notifications),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "WELCOME,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.lightBlue),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 22),
                    child: Text(
                      "Fatih",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 27,
                          color: Colors.blue.shade800),
                    ),
                  ),
                  Container(
                    height: 64,
                    padding: const EdgeInsets.only(bottom: 22),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
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
                  const Text(
                    "Recommended Place",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  Container(
                    height: 220,
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
                        Container(
                          height: 20,
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
