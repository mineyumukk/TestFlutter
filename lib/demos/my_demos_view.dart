//import 'package:firstapp/101/image_learn.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class MyDemosView extends StatelessWidget {
  MyDemosView({Key? key}) : super(key: key);
  final PaddingItems paddingItems = PaddingItems();
  final _title = 'Best Quality Groceries With Out Product';
  final _description = 'Fulfill your cooking needs with our best products';
  final _createNote = 'Get Started';

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
    _BackgroundImageItems(),
    Padding(padding: PaddingItems().horizontalPadding,
    child: Padding(
      padding: PaddingItems.verticalPadding,
        child: Column(
          children: [
            const Padding(padding: PaddingItems.verticalPadding,),
            Center(
            child: _TextTitle(title: _title, textAlign: TextAlign.center),
            ),
            const Padding(padding: EdgeInsets.all(40.0)),
            Center(child:_Description(title: _description, textAlign: TextAlign.center,),),
          ],
        ),
      )
    ),
      const Spacer(),
      SizedBox(
        height: 600,
        width: double.infinity,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            child: _ElevatedButton(createNote: _createNote),
          ),
        ),
      ),
    ],   
  );
  }
}

class _ElevatedButton extends StatelessWidget {
  const _ElevatedButton({
    Key? key,
    required String createNote,
  }) : _createNote = createNote, super(key: key);

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    style:ElevatedButton.styleFrom(
    primary: Colors.green[400],
    shape:const StadiumBorder(),
    ), 
    onPressed: () {}, 
      child: SizedBox(height:ButtonHeight.buttonNormalHeight, 
      child: Padding(
        padding: _PaddingUtility().normalPadding,
        child: Text(_createNote,style: Theme.of(context).textTheme.subtitle1,),
      ),
    ));
  }
}

class _PaddingUtility {
  final normalPadding = const EdgeInsets.all(16.0); 
}
class ButtonHeight {
  static const double buttonNormalHeight=55;
}


class _Description extends StatelessWidget{
  const _Description({Key? key,required this.title, required this.textAlign}) : super(key: key);
  final TextAlign textAlign;//Yazinin ortalı durmasi icin kullanilan property 
  final String title;//Descriptionu buradan aldik.

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 600,
      child: Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
        height: 1.5,
          color: Colors.white,fontWeight: FontWeight.w100)
      ),
    );
  }
}


class _TextTitle extends StatelessWidget {
  const _TextTitle({
    Key? key, this.textAlign = TextAlign.center,
    required String title,
  }) : _title = title, super(key: key);

  final String _title;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text( 
    _title,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.headline5?.copyWith(
      height: 1.5,
      color: Colors.white,fontWeight: FontWeight.w500));
  }
}


class PaddingItems {
  final EdgeInsets horizontalPadding = const EdgeInsets.symmetric(horizontal:120);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 100);
}

class _BackgroundImageItems extends StatelessWidget{
  AssetImage _avocadoImage() => const AssetImage('assets/png/avocado.png');
  @override
  Widget build(BuildContext context) {
  return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        //appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
        //alignment: Alignment.center,
          decoration: BoxDecoration(
             image:DecorationImage(
              image: _avocadoImage(),
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(Colors.black38, BlendMode.darken)
              ),
            ),
       ),
    );
  }
}