import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
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
// import 'navigation/nav_routes/first_route.dart';
// import 'navigation/nav_name_routes/firstscreen.dart';
// import 'navigation/nav_name_routes/secondscreem.dart';
// import 'package:cookbook_flutter/navigation/nav_extract_routenames/extract_screen.dart';
// import 'package:cookbook_flutter/navigation/nav_extract_routenames/home_screen.dart';
// import 'package:cookbook_flutter/navigation/nav_extract_routenames/pass_screen.dart';
// import 'package:cookbook_flutter/navigation/nav_extract_routenames/screen_arguments.dart';
// import 'package:cookbook_flutter/navigation/nav_return_data/selection_btn.dart';
// import 'package:cookbook_flutter/navigation/nav_send_data/todo.dart';
// import 'package:cookbook_flutter/navigation/nav_send_data/todo_screen.dart';

/*Networking */
// import 'networking/delete_data.dart';
// import 'networking/fetch_data.dart';
// import 'networking/auth_request.dart';
// import 'networking/parse_json.dart';
// import 'networking/send_data.dart';
// import 'networking/update_data.dart';
//import 'networking/websocket.dart';

/*Persistence */
// import 'persistence/read_write_files.dart';
//import 'persistence/store_key_value.dart';

/*plugins */
//import 'plugins/video_controller.dart';
import 'plugins/camera_controller.dart';

//main() => runApp(MyApp());
Future<void> main() async {
  //********************PLUGINS = CAMERA CONTROLLER********************

  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
  /**END FEB. 13, 2021 */
}

class MyApp extends StatelessWidget {
  final appTitle = 'Sample Demo';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container();
    //********************PLUGINS = VIDEO CONTROLLER********************
    //return VideoPlayerScreen();
    //return TakePictureScreen
    /**END FEB. 13, 2021 */

    //********************PERSISTENCE = SHARED PREFERENCES********************
    // return MaterialApp(
    //   title: 'Shared preferences demo',
    //   theme: ThemeData(primarySwatch: Colors.blue),
    //   home: SampleSharedPreferences(
    //     title: 'Shared preferences demo',
    //   ),
    // );
    /**END FEB. 11, 2021 */

    //********************NETWORKING = PASSING WHOLE MATERIAL APP********************
    //return DeleteAlbum();
    //return JsonParseIsolate();
    //return SendDataDemo();
    //return UpdateDataSample();
    //final title = 'WebSocket Demo';
    // return MaterialApp(
    //   title: title,
    //   home: SampleWebSocket(
    //     title: title,
    //     channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),
    //   ),
    // );

    //********************PERSISTENCE = READ & WRITE FILES********************
    // return MaterialApp(
    //   title: 'Reading and Writing Files',
    //   home: ReadWriteFiles(storage: CounterStorage()),
    // );

    //********************PASSING WHOLE MATERIAL APP********************
    //return SampleLongList();

    //********************PASSING SCAFFOLD********************
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

    //********************CUSTOM LISTVIEW********************
    // return CustomListView(
    //   items: List<ListItem>.generate(
    //     1000,
    //     (i) => i % 6 == 0
    //         ? HeadingItem("Heading $i")
    //         : MessageItem("Sender $i", "Message Body $i"),
    //   ),
    // );

    //********************SAMPLE ANIMATE NAVIGATE**************
    // return MaterialApp(
    //   title: 'Navigation Basics',
    //   //home: FirstRoute(), //Comment this if using NavigationRoutes
    //   // Start the app with the "/" named route. In this case, the app starts
    //   // on the FirstScreen widget.
    //   initialRoute: '/',
    //   routes: {
    //     // When navigating to the "/" route, build the FirstScreen widget.
    //     '/': (context) => FirstScreen(),
    //     // When navigating to the "/second" route, build the SecondScreen widget.
    //     '/second': (context) => SecondScreen(),
    //   },
    // );

    ///********************ADVANCE MATERIAL NAVIGATION********************

    ///Pass arguments to a named route
    // return MaterialApp(
    //     // Provide a function to handle named routes. Use this function to
    //     // identify the named route being pushed, and create the correct
    //     // Screen.
    //     onGenerateRoute: (settings) {
    //       // If you push the PassArguments route
    //       if (settings.name == PassArgumentsScreen.routeName) {
    //         // Cast the arguments to the correct type: ScreenArguments.
    //         final ScreenArguments args = settings.arguments;

    //         // Then, extract the required data from the arguments and
    //         // pass the data to the correct screen.
    //         return MaterialPageRoute(
    //           builder: (context) {
    //             return PassArgumentsScreen(
    //               title: args.title,
    //               message: args.message,
    //             );
    //           },
    //         );
    //       }
    //       // The code only supports PassArgumentsScreen.routeName right now.
    //       // Other values need to be implemented if we add them. The assertion
    //       // here will help remind us of that higher up in the call stack, since
    //       // this assertion would otherwise fire somewhere in the framework.
    //       assert(false, 'Need to implement ${settings.name}');
    //       return null;
    //     },
    //     title: 'Navigation with Arguments',
    //     home: HomeScreen(),
    //     routes: {
    //       ExtractArgumentsScreen.routeName: (context) =>
    //           ExtractArgumentsScreen(),
    //     });

    ///********************RETURN DATA TO HOME********************
    // return MaterialApp(
    //     title: 'Returning data',
    //     home: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Returning Data Demo'),
    //       ),
    //       body: Center(child: SelectionButton()),
    //     ));

    //********************SEND DATA TO HOME********************
    // return MaterialApp(
    //   title: 'Passing Data',
    //   home: TodosScreen(
    //     todos: List.generate(
    //       20,
    //       (i) => Todo(
    //         'Todo $i',
    //         'A description of what needs to be done for Todo $i',
    //       ),
    //     ),
    //   ),
    // );
  }
}
