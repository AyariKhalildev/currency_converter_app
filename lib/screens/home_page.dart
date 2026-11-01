


import 'package:flutter/material.dart';

class home_page extends StatefulWidget{
  @override
  State<home_page> createState() => home_pageState();
}
class home_pageState extends State<home_page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("currency converter app"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("choose currencies to exchnange",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),)
            ],
          ),
        )
        ),
    );
  }
}