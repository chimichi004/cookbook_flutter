import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter/foundation.dart';

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
//import 'design/custom_font.dart';
//import 'design/custom_themes.dart';
//import 'design/add_tabs.dart';

/*Forms */
//import 'forms/form_validation.dart';
import 'forms/form_custom.dart';

main() {
  // runApp(MaterialApp(
  //   home: MyApp(),
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Sample Demo';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return SampleForm();

    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
      ),
      home: CustomForm(),
    );
  }
}
