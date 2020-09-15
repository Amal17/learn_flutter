import 'package:belajar_multipage/api_model.dart';
import 'package:flutter/material.dart';

class ApiPostPage extends StatefulWidget {
  @override
  _ApiPostPageState createState() => _ApiPostPageState();
}

class _ApiPostPageState extends State<ApiPostPage> {
  PostResult postResult = null;
  UserResult userResult = null;
  String allUser = 'No Data';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id +
                      '| ' +
                      postResult.name +
                      '| ' +
                      postResult.job +
                      '| '
                  : 'Tidak Ada data'),
              RaisedButton(
                child: Text('Post'),
                onPressed: () {
                  PostResult.connect2Api("Fadhil", "Flutter Doctor")
                      .then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
              ),
              Text((userResult != null)
                  ? userResult.id +
                      '| ' +
                      userResult.name +
                      '| ' +
                      userResult.email +
                      '| '
                  : 'Tidak Ada data'),
              RaisedButton(
                child: Text('Get'),
                onPressed: () {
                  UserResult.connect2Api('3').then((value) {
                    userResult = value;
                    setState(() {});
                  });
                },
              ),
              Text(allUser),
              RaisedButton(
                child: Text('Get All User'),
                onPressed: () {
                  AllUserModel.getAllUser('1').then((users) {
                    allUser = '';
                    for (int i = 0; i < users.length; i++) {
                      allUser += users[i].name + "(" + users[i].email + ")";
                    }
                    setState(() {});
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
