import 'dart:ui';

import 'package:flutter/material.dart';

class TypographPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TypoGraph'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Contoh 01 (Tanpa Apapun)',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Contoh 02 (Small Caps)',
                style: TextStyle(
                  fontSize: 30,
                  fontFeatures: [FontFeature.enable('smcp')],
                ),
              ),
              Text(
                'Contoh 03 1/2 (Small Caps & Frac)',
                style: TextStyle(
                  fontSize: 30,
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ],
                ),
              ),
              Text(
                'Contoh Lovina 03 1/2 (Small Caps & Frac)',
                style: TextStyle(
                  fontSize: 30,
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ],
                  fontFamily: 'Lovina',
                ),
              ),
              Text(
                'Contoh 049 Lovina (Small Caps & Frac)',
                style: TextStyle(
                  fontSize: 30,
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ],
                  fontFamily: 'Lovina',
                ),
              ),
              Text(
                'Contoh 049 Lovina (oldstyleFigures)',
                style: TextStyle(
                  fontSize: 30,
                  fontFeatures: [FontFeature.oldstyleFigures()],
                  fontFamily: 'Lovina',
                ),
              ),
              Text(
                'Contoh 049 Lovina (stylisticSet)',
                style: TextStyle(
                  fontSize: 30,
                  fontFeatures: [
                    FontFeature.stylisticSet(3),
                  ],
                  fontFamily: 'Lovina',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
