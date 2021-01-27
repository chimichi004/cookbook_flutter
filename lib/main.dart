import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*Animations */
//import 'animation/page_route_transition.dart';
//import 'animation/physics_simulation.dart';
//import 'animation/animate_container.dart';
//import 'animation/fade_widget.dart';

/*Design */
//import 'design/add_drawer.dart';
//import 'design/add_snackbar.dart';
//import 'design/export_font.dart';
//import 'design/add_orientationbuilder.dart';
import 'design/custom_font.dart';

main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final appTitle = 'Sample Demo';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //  return SampleSnackbar();
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
      ),
      home: CustomFont(),
    );
  }
}
