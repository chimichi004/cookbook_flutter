import 'package:flutter/material.dart';

//import 'animation/page_route_transition.dart';
//import 'animation/physics_simulation.dart';
import 'animation/animate_container.dart';

main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnimatedContainerApp();
  }
}
