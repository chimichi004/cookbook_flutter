// https://flutter.dev/docs/cookbook/navigation/navigation-basics

import 'package:cookbook_flutter/navigation/nav_routes/second_route.dart';
import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            //todo navigation
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}
