import 'package:flutter/material.dart';
import 'package:moroxval/components/bottom_bar.dart';
import 'package:moroxval/pages/md/screens/welcome/welcome_screen.dart';
import 'pages/Login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Morox Evaluator',
      theme: ThemeData(fontFamily: "SF-Pro-Text"),
      home: const BottomBar()
    );
  }
}
