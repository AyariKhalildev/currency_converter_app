



import 'package:currency_converter_app/UIcomponents/currencyUI.dart';
import 'package:currency_converter_app/services/currency.dart';
import 'package:flutter/material.dart';

class ChooseCurrencyScreen extends StatelessWidget{
  List currencies = List.filled(50, Currency_ui("dollar","USA"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("choose currency"),
      ),
      body: SafeArea(
        
        child: ListView(
          children: [
            ...currencies
          ],
        )
        ),
    );
    
  }
}