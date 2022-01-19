import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/DrawerScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Home"),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Wrap(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                    height: 12,
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
                  // ignore: sized_box_for_whitespace
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
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/img/Monas.png',
                            height: 80,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/img/Berlin.png',
                            height: 80,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/img/Tokyo.png',
                            height: 80,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/img/Roma.png',
                            height: 80,
                            fit: BoxFit.fitHeight,
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
      drawer: DrawerScreen(),
    );
  }
}
