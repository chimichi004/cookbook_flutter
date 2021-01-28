// https://flutter.dev/docs/cookbook/design/fonts

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar uses the app-default Raleway font.
      appBar: AppBar(title: Text('Custom Fonts')),
      body: Center(
        // This Text widget uses the RobotoMono font.
        child: Text(
          'Roboto Mono sample',
          style: GoogleFonts.robotoMono(
            textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
          ),
        ),
      ),
    );
  }
}
