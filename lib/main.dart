import 'package:facebook_app/pages/home_page.dart';
import 'package:facebook_app/pages/message_ui_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        MessageUIPage.id:(context)=>MessageUIPage(),
      },
    );
  }
}
