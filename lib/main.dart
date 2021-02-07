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
//import 'forms/form_custom.dart';
//import 'forms/textfield_focus.dart';

/*Gestures */
//import 'gestures/gestures.dart';
//import 'gestures/swipe_dismiss.dart';

/*Images */
//import 'images/img_display.dart';
//import 'images/img_fadein.dart';
//import 'images/img_cache.dart';

/*List */
//import 'lists/list_standard.dart';
//import 'lists/list_horizontal.dart';
//import 'lists/list_grid.dart';
//import 'lists/list_custom.dart';
//import 'lists/list_floating_appbar.dart';
//import 'lists/list_horizontal.dart';
//import 'lists/list_longlist.dart';

/*Navigation */
// import 'navigation/nav_hero/main_screen.dart';
import 'navigation/nav_routes/first_route.dart';

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
    //return SampleLongList();

    // return CustomListView(
    //   items: List<ListItem>.generate(
    //     1000,
    //     (i) => i % 6 == 0
    //         ? HeadingItem("Heading $i")
    //         : MessageItem("Sender $i", "Message Body $i"),
    //   ),
    // );

    // return MaterialApp(
    //   title: appTitle,
    //   theme: ThemeData(
    //     textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
    //   ),
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text(appTitle),
    //     ),
    //     body: ImageDisplay(),
    //   ),
    // );

    //SAMPLE ANIMATE NAVIGATE
    return MaterialApp(
      title: 'Navigation Basics',
      home: FirstRoute(),
    );
  }
}
