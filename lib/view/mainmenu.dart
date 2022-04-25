// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_const, must_be_immutable, prefer_final_fields, unnecessary_this, unnecessary_cast, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:pos_app/utility/color.dart';
import 'package:pos_app/view/dashboard.dart';
import 'package:pos_app/view/setting.dart';
import 'package:pos_app/view/transaction.dart';

class MainMenu extends StatefulWidget {
  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  final tabs = [
    Dashboard(),
    Transaction(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: CustomColor.one),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sideMenuWidget(),
            SizedBox(width: 20),
            Expanded(
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: <Widget>[tabs[_selectedIndex]],
              ),
            ),
          ],
        ),
      ),
    );
  }

  sideMenuWidget() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      height: double.infinity,
      width: MediaQuery.of(context).size.width / 10,
      decoration: BoxDecoration(
        color: CustomColor.two,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SizedBox(
        height: 250,
        child: NavigationRail(
          backgroundColor: Colors.transparent,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              selectedIcon: Icon(Icons.favorite, color: Colors.white),
              label: Text('Beranda', style: TextStyle(color: Colors.white)),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.bookmark_border, color: Colors.white),
              selectedIcon: Icon(Icons.book, color: Colors.white),
              label: Text('Transaksi', style: TextStyle(color: Colors.white)),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.star_border, color: Colors.white),
              selectedIcon: Icon(Icons.star, color: Colors.white),
              label: Text('Pengaturan', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
