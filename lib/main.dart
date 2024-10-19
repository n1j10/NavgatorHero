import 'package:flutter/material.dart';
import 'package:textfieldr/Regestraion.dart';
import 'package:textfieldr/loginPage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}