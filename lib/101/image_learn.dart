import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 200,
          width: 200,
          child: PngImage(name: ImageItems().appleBookWithoutPath),
        )
      ]),
    );
  }
}

class ImageItems{
  final String appleWithBook= "assets/e92091eeac213fe2ddade05b123adbbd.png";
  final String appleBookWithoutPath = "ic_apple_with_book";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/png/$name.png', fit: BoxFit.contain);
  }
}