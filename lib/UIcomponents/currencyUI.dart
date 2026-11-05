


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Currency_ui extends StatelessWidget {
  final String currency;
  final String country;
  final String image;

  Currency_ui(this.currency, this.country, this.image);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("the currency $currency and the country is $country");
      },
      child: ListTile(
        leading: ClipOval(
          child: SizedBox.square(
            dimension: 50,
            child: SvgPicture.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(currency,
        style: TextStyle(
          fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text(country),
      ),
    );
    
  }
}
