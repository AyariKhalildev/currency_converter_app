import 'package:currency_converter_app/UIcomponents/currencyUI.dart';
import 'package:currency_converter_app/screens/choose_currency_screen.dart';
import 'package:currency_converter_app/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
class home_page extends StatefulWidget{
  @override
  State<home_page> createState() => home_pageState();
}
class home_pageState extends State<home_page>{
  final TextEditingController _textEditingController = TextEditingController();
  String? _firstCurrency;
  String? _secondCurrency;
  Position? _userLocation;

  @override
  void initState() {
    super.initState();
    _loadCurrencies();
    _loadUserLocation();
  }
  Future<void> _loadCurrencies()async {
    final prefs = await  SharedPreferences.getInstance();
    String? firstCurrency = await prefs.getString("firstCurrency") ;
    String? secondCurrency = await prefs.getString("secondCurrency");
    if(firstCurrency == null){
      firstCurrency = "dollar";
      await prefs.setString("firstCurrency", "dollar");
    }
    if(secondCurrency == null){
      secondCurrency = "TND";
      await prefs.setString("secondCurrency", "TND");
    }
    setState(() {
      
       _firstCurrency = firstCurrency;
    _secondCurrency = secondCurrency;
    });
   
    print("the first currency is  $_firstCurrency");
    print("the second currency is $_secondCurrency");
  }
  Future<void> _loadUserLocation() async {
   
  }
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (builder) => ChooseCurrencyScreen()));
                      },
                      child: ListTile(
                      leading: ClipOval(
                      child: SizedBox.square(
                        dimension: 50,
                        child: SvgPicture.asset(
                            "assets/flags/us.svg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(_firstCurrency ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      subtitle: Text("USA"),
                      ),
                    )
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (builder) => ChooseCurrencyScreen()));
                      },
                      child: ListTile(
                      trailing: ClipOval(
                      child: SizedBox.square(
                        dimension: 50,
                        child: SvgPicture.asset(
                            "assets/flags/tn.svg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(_secondCurrency ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.end,
                        ),
                      subtitle: Text("TN",textAlign: TextAlign.end,),
                      ),
                    )
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
