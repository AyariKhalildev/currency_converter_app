import 'package:currency_converter_app/UIcomponents/currencyUI.dart';
import 'package:currency_converter_app/screens/choose_currency_screen.dart';
import 'package:currency_converter_app/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';

class home_page extends StatefulWidget{
  @override
  State<home_page> createState() => home_pageState();
}
class home_pageState extends State<home_page>{
  final TextEditingController _textEditingController = TextEditingController();
  Position? _userLocation;

  @override
  void initState() {
    super.initState();
    _loadUserLocation();
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
                      title: Text("dollar",
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
                      title: Text("TND",
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
