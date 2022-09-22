import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      content: Text(
                          '<a target="_blank" href="https://icons8.com/icon/kappWljBsia5/brankrupt">Brankrupt</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>'),
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
      ),
    ),
  );
}
