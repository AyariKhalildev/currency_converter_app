


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Currency_ui extends StatelessWidget {
  final String currency;
  final String country;
  Currency_ui(this.currency,this.country);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlue
          ),
        ),
      title: Text(currency,
      style: TextStyle(
        fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(country),
    );
    
  }
}