import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: _gifData["images"]["fixed_height"]["url"],
          height: 300.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
