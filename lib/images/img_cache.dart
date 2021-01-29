// https://flutter.dev/docs/cookbook/images/cached-images

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SampleCacheImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Cached Images';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: CachedNetworkImage(
            placeholder: (context, url) => CircularProgressIndicator(),
            imageUrl: 'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}
