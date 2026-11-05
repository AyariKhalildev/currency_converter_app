


import 'package:currency_converter_app/UIcomponents/currencyUI.dart';
import 'package:currency_converter_app/screens/choose_currency_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home_page extends StatefulWidget{
  @override
  State<home_page> createState() => home_pageState();
}
class home_pageState extends State<home_page>{
  final TextEditingController _textEditingController = TextEditingController();
  
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
              Text("choose currencies to exchange",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              )
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Currency_ui("dollar","usa","assets/flags/us.svg")
                  ),
                  Expanded(
                    child: Currency_ui("TND", "TN", "assets/flags/tn.svg")
                  )
                ],
              ),
              
              
            ]
          ),
        )
        )
    );
  }
}