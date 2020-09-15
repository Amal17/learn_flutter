import 'package:flutter/material.dart';
import 'package:stream_controller/flutter_bloc.dart';
import 'package:stream_controller/state_management.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:bloc/bloc.dart';

void main() async {
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
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
                  child: Text('State Management BLoC tanpa Library'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StateManagement();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Flutter Bloc'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FlutterBlocPage();
                    }));
                  },
                ),
              ],
            ))));
  }
}
