import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Text Field'),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              // obscureText: true,
              // maxLength: 5,
              // maxLines: 1,
              controller: controller,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.lightBlue.withOpacity(0.5),
                filled: true,
                icon: Icon(Icons.ac_unit),
                prefix: Container(
                  width: 10,
                  height: 10,
                ),
                prefixIcon: Icon(Icons.person),
                // prefixText: 'Nama :',
                prefixStyle: TextStyle(color: Colors.blue),
                labelText: 'Ini Label diatas',
                labelStyle: TextStyle(color: Colors.orange),
                hintText: 'Ini Text Hint',
                suffixText: 'Sufix dibelakang',
              ),
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
