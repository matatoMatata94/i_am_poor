import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Center(child: Text('test')),
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
