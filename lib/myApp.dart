import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final appTitle = 'Info';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am poor'),
        backgroundColor: Colors.green[700],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/icons8-ok-hand-96.png'),
        ),
      ),
      backgroundColor: Colors.green[200],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Info'),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                showAboutDialog(context: context, children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text('https://icons8.com'),
                  )
                ], );
              },
            ),
          ],
        ),
      ),
    );
  }
}