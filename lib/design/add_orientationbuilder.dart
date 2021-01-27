// https://flutter.dev/docs/cookbook/design/orientation

import 'package:flutter/material.dart';

class SampleOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return GridView.count(
          // Create a grid with 2 columns in portrait mode, or 3 columns in
          // landscape mode.
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline1,
              ),
            );
          }),
        );
      },
    );
  }
}
