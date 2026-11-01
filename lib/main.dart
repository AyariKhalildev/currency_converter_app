import 'package:currency_converter_app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const currency_converter_app());
}

class currency_converter_app extends StatelessWidget {
  const currency_converter_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}