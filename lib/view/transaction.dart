// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_const, must_be_immutable, prefer_final_fields, unnecessary_this, unnecessary_cast, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:pos_app/utility/color.dart';
import 'package:intl/intl.dart';
import 'package:indonesia/indonesia.dart';

class Transaction extends StatefulWidget {
  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  DateTime dateNow = DateTime.now();
  List menuItem = [
    'Semua',
    'Makanan',
    'Minuman',
    'Snack',
    'Shampoo',
    'Sabun',
    'Sikat Gigi',
    'Pasta Gigi',
    'Parfum',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: CustomColor.three,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      DateFormat.yMMMEd().format(DateTime.now()) +
                          ", " +
                          DateFormat('hh:mm a').format(DateTime.now()),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: CustomColor.four,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Enter item code.",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...(menuItem as List)
                          .map((e) => MenuItemWidget(e.toString()))
                          .toList(),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    children: List.generate(
                      choices.length,
                      (index) {
                        return Center(
                          child: SelectCard(choice: choices[index]),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: CustomColor.four,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  child: Text(
                    "Keranjang",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.price, this.img});
  final String title;
  final String price;
  final String img;
}

const List<Choice> choices = const <Choice>[
  Choice(
      title: "Dragonfly, russian",
      price: "10000",
      img: "http://dummyimage.com/209x100.png/dddddd/000000"),
  Choice(
      title: "House crow",
      price: "10000",
      img: "http://dummyimage.com/125x100.png/ff4444/ffffff"),
  Choice(
      title: "White-winged black tern",
      price: "10000",
      img: "http://dummyimage.com/132x100.png/ff4444/ffffff"),
  Choice(
      title: "Puku",
      price: "10000",
      img: "http://dummyimage.com/192x100.png/cc0000/ffffff"),
  Choice(
      title: "Monitor, water",
      price: "10000",
      img: "http://dummyimage.com/195x100.png/ff4444/ffffff"),
  Choice(
      title: "Springbuck",
      price: "10000",
      img: "http://dummyimage.com/234x100.png/ff4444/ffffff"),
  Choice(
      title: "Urial",
      price: "10000",
      img: "http://dummyimage.com/195x100.png/ff4444/ffffff"),
  Choice(
      title: "Cat, cape wild",
      price: "10000",
      img: "http://dummyimage.com/178x100.png/ff4444/ffffff"),
  Choice(
      title: "Crane, blue",
      price: "10000",
      img: "http://dummyimage.com/229x100.png/dddddd/000000"),
  Choice(
      title: "Phalarope, red",
      price: "10000",
      img: "http://dummyimage.com/209x100.png/dddddd/000000"),
  Choice(
      title: "Bent-toed gecko",
      price: "10000",
      img: "http://dummyimage.com/191x100.png/5fa2dd/ffffff"),
  Choice(
      title: "White-bellied sea eagle",
      price: "10000",
      img: "http://dummyimage.com/221x100.png/ff4444/ffffff"),
  Choice(
      title: "Goose, cape barren",
      price: "10000",
      img: "http://dummyimage.com/105x100.png/ff4444/ffffff"),
  Choice(
      title: "Vulture, black",
      price: "10000",
      img: "http://dummyimage.com/138x100.png/cc0000/ffffff"),
  Choice(
      title: "Silver-backed jackal",
      price: "10000",
      img: "http://dummyimage.com/189x100.png/dddddd/000000"),
  Choice(
      title: "Baboon, yellow",
      price: "10000",
      img: "http://dummyimage.com/239x100.png/ff4444/ffffff"),
  Choice(
      title: "Roe deer",
      price: "10000",
      img: "http://dummyimage.com/129x100.png/dddddd/000000"),
  Choice(
      title: "Javan gold-spotted mongoose",
      price: "10000",
      img: "http://dummyimage.com/162x100.png/ff4444/ffffff"),
  Choice(
      title: "Giant heron",
      price: "10000",
      img: "http://dummyimage.com/111x100.png/5fa2dd/ffffff"),
  Choice(
      title: "Ground monitor (unidentified)",
      price: "10000",
      img: "http://dummyimage.com/221x100.png/ff4444/ffffff"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(choice.img))),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: CustomColor.four.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              choice.title + "\n" + rupiah(choice.price),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  String _label;

  MenuItemWidget(this._label);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: CustomColor.four,
      ),
      child: Text(
        this._label,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      padding: EdgeInsets.only(left: 15, right: 15),
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10, right: 5),
    );
  }
}
