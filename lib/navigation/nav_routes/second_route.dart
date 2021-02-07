//  https://flutter.dev/docs/cookbook/navigation/navigation-basics

import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //todo navigation
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
