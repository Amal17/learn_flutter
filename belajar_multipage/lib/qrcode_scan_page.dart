import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class QrcodeScanPage extends StatefulWidget {
  @override
  _QrcodeScanPageState createState() => _QrcodeScanPageState();
}

class _QrcodeScanPageState extends State<QrcodeScanPage> {
  String text = 'Hasil QrCode Scan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QrCode Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            RaisedButton(
              child: Text('Scan'),
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
