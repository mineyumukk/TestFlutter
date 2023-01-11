import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  ColorLearnView({Key? key}) : super(key: key);
  final ColorItems colorItems = ColorItems();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SyhPia')),
        body: Column(
          children: [
            Container(
              //color: ColorStatics.sulu,
              color: Theme.of(context).errorColor,
              child: ( const Text('data')
              ))
          ],
        ),
    );
  }
}

class ColorItems {
  final Color porsche = const Color(0xffEDBF61);
}

class ColorStatics{
  static const Color sulu = Color.fromARGB(30, 16, 214, 181);
}