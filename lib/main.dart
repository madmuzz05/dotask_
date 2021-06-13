import 'package:dotask/screens/dashboard/components/task_list_dash.dart';
import 'package:dotask/screens/dashboard/dashboard.dart';
import 'package:dotask/screens/event/event.dart';
import 'package:dotask/screens/list/list.dart';
import 'package:dotask/screens/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dotask',
      home: Login(),
    );
  }
}
