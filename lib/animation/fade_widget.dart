// https://flutter.dev/docs/cookbook/animation/opacity-animation

import 'package:flutter/material.dart';

class FadeWidget extends StatefulWidget {
  final String title;

  FadeWidget({Key key, this.title}) : super(key: key);

  @override
  _FadeWidgetState createState() => _FadeWidgetState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _FadeWidgetState extends State<FadeWidget> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade In/Out Widget'),
      ),
      body: Center(
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toogle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}
