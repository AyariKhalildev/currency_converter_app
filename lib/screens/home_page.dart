


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
              Text("choose currencies to exchnange",
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
                      onTap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (builder)=> ChooseCurrencyScreen())
                        );
                      },
                      child: ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlue
                          ),
                        ),
                        title: Text("currency"),
                        subtitle: Text("country"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (builder)=> ChooseCurrencyScreen()));
                      },
                      child: ListTile(
                        trailing: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlue
                          ),
                        ),
                        title: Text("currency"),
                        subtitle: Text("country"),
                      ),
                    ),
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