// https://flutter.dev/docs/cookbook/lists/long-lists

import 'package:flutter/material.dart';

class SampleLongList extends StatelessWidget {
  final items = List<String>.generate(1000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    final title = "Sample Long List";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
