// https://flutter.dev/docs/cookbook/lists/basic-list

import 'package:flutter/material.dart';

class StandardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Demo Listview";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            )
          ],
        ),
      ),
    );
  }
}
