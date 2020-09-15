import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Belajar Stack dan Align')),
        body: Stack(
          children: <Widget>[
            // Background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),

            // ListView Text
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini Adalah Text yang ada di lapisan kedua dari stak, sengaja dipanjangkan biar bisa scroll",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini Adalah Text yang ada di lapisan kedua dari stak, sengaja dipanjangkan biar bisa scroll",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini Adalah Text yang ada di lapisan kedua dari stak, sengaja dipanjangkan biar bisa scroll",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini Adalah Text yang ada di lapisan kedua dari stak, sengaja dipanjangkan biar bisa scroll",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini Adalah Text yang ada di lapisan kedua dari stak, sengaja dipanjangkan biar bisa scroll",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini Adalah Text yang ada di lapisan kedua dari stak, sengaja dipanjangkan biar bisa scroll",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),

            // Button
            Align(
              // alignment: Alignment.bottomCenter,
              alignment: Alignment(0.9, 0.9),
              child: RaisedButton(
                  child: Text('Ini Tombol'),
                  color: Colors.yellow,
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
