import 'package:flutter/material.dart';

class BelajarCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard(Icons.account_box, 'Account Box'),
            buildCard(Icons.adb, 'Serangga Android'),
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.blue,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
