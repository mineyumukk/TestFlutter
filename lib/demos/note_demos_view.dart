import 'package:firstapp/101/image_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({Key? key}) : super(key: key);
  final _title = 'Create Your First Note';
  final _description='Add A Note';
  final _createNote= 'Create A Note';
  final _importNotes ='Import Notes';
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],//Sayfanın arkaplan rengi
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),//AppBArIn icinde tanimlanan mobilde saat kisminin siyah gorunmesi icin
      body: Padding(//Bosluk icin padding kullaniyoruzz!!!!!
        padding: PaddingItems.horizontalPadding,//Text ve title'in sag ve soldan bosluklu olmasini saglar.
        child: Column(
          children: [
            PngImage(name: ImageItems().appleBookWithoutPath),
            _TitleWidget(title: _title),
            Padding(//Ana baslikla aralarinda bosluk olmasini saglar.
              padding: PaddingItems.verticalPadding,//Vertical text'in yukarıdan bosluklu olmasını sagladi
              child: _SubtitleWidget(title: _description*10, textAlign: TextAlign.left,),
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: SizedBox(height:ButtonHeight.buttonNormalHeight, 
              child: 
                Center(child: Text(_createNote, style: Theme.of(context).textTheme.headline5,)))),//Center Butonun tam Sigmasini ve ortali durmasini saglar.
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(height: 50,)
          ]
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({Key? key, this.textAlign = TextAlign.center, required this.title}) : super(key: key);
  final TextAlign textAlign;//Yazinin ortalı durmasi icin kullanilan property 
  final String title;//Descriptionu buradan aldik.

  @override
  Widget build(BuildContext context) {
    return Text(
    title,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.subtitle1?.copyWith(
        color: Colors.black,fontWeight: FontWeight.w100)
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
        color: Colors.black,fontWeight: FontWeight.w700
      ));
  }
}

class PaddingItems{//Text ve title icin bosluklar olusturmamizi saglayan sinif
  //final EdgeInsets horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);
  //or
  static const EdgeInsets horizontalPadding=EdgeInsets.symmetric(horizontal:20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 25);
}

class ButtonHeight {
  static const double buttonNormalHeight=40;
}