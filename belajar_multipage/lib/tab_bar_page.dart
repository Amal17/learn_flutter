import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicatorColor: Colors.red,
      indicator: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.purple,
            width: 5,
          ),
        ),
        color: Colors.blueAccent,
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: 'Comment',
        ),
        Tab(
          child: Image(image: AssetImage('assets/pattern.png')),
        ),
        Tab(
          icon: Icon(Icons.computer),
        ),
        Tab(
          text: 'News',
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Contoh Tab Bar'),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(
                    color: Colors.amber,
                    child: myTabBar,
                  ))),
          body: TabBarView(children: <Widget>[
            Center(
              child: Text('Tab Pertama'),
            ),
            Center(
              child: Text('Tab Kedua'),
            ),
            Center(
              child: Text('Tab Ketiga'),
            ),
            Center(
              child: Text('Tab Keempat'),
            ),
          ]),
        ),
      ),
    );
  }
}
