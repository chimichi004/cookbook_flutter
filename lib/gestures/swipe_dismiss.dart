// https://flutter.dev/docs/cookbook/gestures/dismissible

import 'package:flutter/material.dart';

class SwipeDismiss extends StatefulWidget {
  @override
  _SwipeDismissState createState() => _SwipeDismissState();
}

class _SwipeDismissState extends State<SwipeDismiss> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets
              key: Key(item),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text("$item dismissed")));
              },
              background: Container(
                color: Colors.red,
              ),
              child: ListTile(
                title: Text('$item'),
              ),
            );
          },
        ),
      ),
    );
  }
}
