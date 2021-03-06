// https://flutter.dev/docs/cookbook/persistence/key-value

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SampleSharedPreferences extends StatefulWidget {
  final String title;

  SampleSharedPreferences({Key key, this.title}) : super(key: key);

  @override
  _SampleSharedPreferencesState createState() =>
      _SampleSharedPreferencesState();
}

class _SampleSharedPreferencesState extends State<SampleSharedPreferences> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadCounter();
  }

  //Loading counter value on start
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  //Incrementing counter after click
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
