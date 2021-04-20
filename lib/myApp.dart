import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;
  final _url = 'https://icons8.com';

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
                showAboutDialog(
                  context: context,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: TextButton(
                        child: Text('https://icons8.com'),
                        onPressed: _launchURL,
                      ),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    try {
      await canLaunch(_url)
          ? await launch(_url)
          : throw 'Could not launch $_url';
    } catch (e) {
      print('caught error: $e');
    }
  }
}
