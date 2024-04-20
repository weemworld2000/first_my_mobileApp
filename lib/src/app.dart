import 'package:flutter/material.dart';
import 'package:weem_app1/src/pages/login/login_page.dart';

void main() {
  runApp( WeemApp());
}

class WeemApp extends StatelessWidget {
   const WeemApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WeemApp",
      home: LoginPage(),
    );
  }
}