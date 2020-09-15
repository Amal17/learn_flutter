import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Image'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 500,
            height: 500,
            padding: EdgeInsets.all(5),
            child: Image(
              // image: AssetImage('assets/coffee.png'),
              image: NetworkImage(
                  'https://cdn.idntimes.com/content-images/community/2018/11/tempat-mendirikan-tenda-1a46ade4a8c07e6367ed93d728bb0e4f.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
