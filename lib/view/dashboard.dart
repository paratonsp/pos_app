// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_const, must_be_immutable, prefer_final_fields, unnecessary_this, unnecessary_cast, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:pos_app/utility/color.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
        children: [Text("DASHBOARD")],
      ),
    );
  }
}
