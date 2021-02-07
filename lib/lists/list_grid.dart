// https://flutter.dev/docs/cookbook/lists/grid-lists

import 'package:flutter/material.dart';

class SampleGridListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Sample Demo Grid View";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
