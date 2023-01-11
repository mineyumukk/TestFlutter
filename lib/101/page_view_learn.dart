import 'package:firstapp/101/button_learn.dart';
import 'package:firstapp/101/icon_learn.dart';
import 'package:firstapp/101/image_learn.dart';
//import 'package:firstapp/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/foundation/key.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);

  int _currentPageIndex = 0;
  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
    });
} 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20),
            child:Text(_currentPageIndex.toString()),
          ),
          const Spacer(), //Text ile buton arasında boşluk bıraktırır
          FloatingActionButton(
            onPressed: (){
              _pageController.previousPage(duration: _DurationUtilitiy._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left)),
          FloatingActionButton(
            onPressed: (){
              _pageController.nextPage(duration: _DurationUtilitiy._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right)),
        ],
      ),
      appBar:  AppBar(),
      body:PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
          children: [
            const ImageLearn(),
            IconLearnView(),
            const ButtonLearn(),
          ],
      )
    );
  }
}

class _DurationUtilitiy { 
  static const _durationLow = Duration(seconds:1);
}