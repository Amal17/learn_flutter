import 'package:flutter/material.dart';
import 'package:shared_state/multi_shared_state.dart';
import 'package:shared_state/shared_state.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Learn Flutter')),
            body: Center(
                child: ListView(
              children: <Widget>[
                RaisedButton(
                  child: Text('Shared State'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SharedState();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Multi Shared State'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MultySharedState();
                    }));
                  },
                ),
              ],
            ))));
  }
}
