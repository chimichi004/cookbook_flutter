// https://flutter.dev/docs/cookbook/images/network-image

import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network('https://picsum.photos/250?image=9');
  }
}
