import 'package:flutter/material.dart';
import 'package:sanberappflutter/quiz3/screen/home/model.dart';

class Homescreen extends StatefulWidget {
  final String value;
  Homescreen({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState(value);
}

class _HomescreenState extends State<Homescreen> {
  String value;
  int _total;

  void incrementTotal() {
    setState(() {
      _total++;
    });
  }

  _HomescreenState(this.value, [this._total = 0]);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        "https://avatars.githubusercontent.com/u/52710807?v=4",
                        height: 80,
                        width: 80,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(value.toString()),
                  ],
                ),
                Row(
                  children: [
                    //## soal 4
                    //Tulis Coding disini

                    Text("Rp  {$_total'}"),

                    //sampai disini
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.add_shopping_cart)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            //#soal 3 silahkan buat coding disini

            //untuk container boleh di pake/dimodifikasi
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int i) {
                      return Column(
                        children: [
                          Text(
                            items[i].name,
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            items[i].price.toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.network(
                            items[1].profileUrl,
                            height: 80,
                            fit: BoxFit.fitHeight,
                          ),
                          ElevatedButton(
                            child: Text("Beli"), onPressed: () {
                              setState(() {
                                _total++;
                              });
                            },
                            //end coding 1 dan 2 sampai sini
                          ),
                        ],
                      );
                    }),
              ),
            ),

            //sampai disini soal 3
          ],
        ),
      ),
    );
  }
}

// Widget myWidget(BuildContext context) {
//   return MediaQuery.removePadding(
//     context: context,
//     removeTop: true,
//     child: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//         ),
//         itemCount: 300,
//         itemBuilder: (BuildContext context, int i) {
//           return Column(
//             children: [
//               Text(
//                 items[i].name,
//                 style: TextStyle(fontSize: 14),
//               ),
//               Text(
//                 items[i].price.toString(),
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Image.network(
//                 items[1].profileUrl,
//                 height: 80,
//                 fit: BoxFit.fitHeight,
//               ),
//               ElevatedButton(
//                 child: Text("Beli"), onPressed: () {},
//                 //end coding 1 dan 2 sampai sini
//               ),
//             ],
//           );
//         }),
//   );
// }
