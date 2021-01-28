// https://flutter.dev/docs/cookbook/gestures/ripples

import 'package:flutter/material.dart';

class TouchRipples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Touch ripples'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Tap ripples'),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Text('Flat button'),
          ),
        ),
      ),
    );
  }
}
