import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(IamPoorApp());
}

class IamPoorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('About'),
                    content: ShowLink(),
                  ),
                );
              },
              child: Text('About'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/icons8-brankrupt-51.png'),
        ),
      ),
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text('I am poor')),
      ),
    );
  }
}

class ShowLink extends StatelessWidget {
  const ShowLink({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            style: TextStyle(color: Colors.black),
            text: 'Got the icon from:\n',
          ),
          TextSpan(
            style: TextStyle(color: Colors.blue),
            text: 'icons8.com/icon/kappWljBsia5/brankrupt',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch('https://icons8.com/icon/kappWljBsia5/brankrupt');
              },
          ),
        ],
      ),
    );
  }
}

//<a target="_blank" href="https://icons8.com/icon/kappWljBsia5/brankrupt">Brankrupt</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>
