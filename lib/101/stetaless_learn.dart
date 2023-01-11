import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);
  final String text2 = 'DAta'; //Textler her zaman icin burada yazilmali

  @override
  Widget build(BuildContext context) {//Build metodu widgetların olusturulmasi icin dönen ana yerdir.
    //Build metotların içinde ekranlarımızı geliştiririz.
    
    return Scaffold(
      appBar: AppBar(),
      body:Column( 
        children: [
          TitleTextWidget(text: text2),
          const _CustomContainer(),
          _emptyBox(),
          const TitleTextWidget(text: 'DAta'),
          const TitleTextWidget(text: 'DAta'),
          _emptyBox(),
          const TitleTextWidget(text: 'DAta'),
      ],     
     ), 
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10,);
}

class _CustomContainer extends StatelessWidget{
  const _CustomContainer({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), color: Colors.white),
    );
  }

}


class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context){
    return Text(text,
    style: Theme.of(context).textTheme.headline4,);
  }
}