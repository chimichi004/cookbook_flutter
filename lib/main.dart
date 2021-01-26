import 'package:flutter/material.dart';

/*Animations */
//import 'animation/page_route_transition.dart';
//import 'animation/physics_simulation.dart';
//import 'animation/animate_container.dart';
//import 'animation/fade_widget.dart';

/*Design */
import 'design/add_drawer.dart';

main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final appTitle = 'Sample Drawer Demo';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SampleDrawer(title: appTitle);
  }
}
