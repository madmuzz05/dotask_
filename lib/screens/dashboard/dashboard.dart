import 'dart:ui';
import 'package:dotask/screens/contains.dart';
import 'package:dotask/screens/dashboard/components/dashboard_card.dart';
import 'package:dotask/screens/dashboard/components/header_dashboard.dart';
import 'package:dotask/screens/dashboard/components/text_sub_bab.dart';
import 'package:dotask/screens/dashboard/components/title_sub_bab.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
          child: Column(
            children: <Widget>[
              HeaderDashboard(size: size),
              TitleSubBab(
                text: "My Task",
                fSize: 24,
              ),
              DashBoarCard(),
              TextSubBab(
                text1: "Today Task",
                fSize1: 24,
                text2: "View All",
                fSize2: 14,
              ),
            ],
          ),
        ));
  }
}
