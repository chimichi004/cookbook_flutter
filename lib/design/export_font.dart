//https://flutter.dev/docs/cookbook/design/package-fonts

import 'package:flutter/material.dart';

class SampleFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Using the Raleway font from the packages font',
        style: TextStyle(fontFamily: 'Raleway', package: 'fonts'),
      ),
    );
  }
}
