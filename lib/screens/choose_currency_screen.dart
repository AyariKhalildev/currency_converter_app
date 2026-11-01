



import 'package:flutter/material.dart';

class ChooseCurrencyScreen extends StatelessWidget{

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
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue
                ),
              ),
              title: Text("currency",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              subtitle: Text("country"),
            )
          ],
        )
        ),
    );
    
  }
}