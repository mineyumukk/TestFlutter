import 'package:firstapp/product/languages/languages_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne= FocusNode();
  FocusNode focusNodeTextFieldTwo =FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyData'),
      ),
      body: Form(
        child: Column(
          children: [
            TextField(
              maxLength: 20,
              buildCounter: (BuildContext context, {int? currentLength,bool? isFocused,int? maxLength}){
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,//Telde Klavyenin mail tipinde acilmasini saglar.
              autofocus: true,
              autofillHints: const[AutofillHints.email],
              focusNode: focusNodeTextFieldOne,
              inputFormatters: [TextProjectInputFormater()._formmatter],
              textInputAction: TextInputAction.next,
              decoration: _InputDecorator().emailInput,
              ),
            TextFormField(focusNode: focusNodeTextFieldTwo, 
          minLines:2, maxLines: 4),
          ],
        ),
      ),
        
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
          key:key,
          duration: const Duration(seconds: 1),
          height: 10,
          width: 10.0 * (currentLength ?? 0),
          color: Colors.green,
        );
  }
}

class TextProjectInputFormater {
  final _formmatter = TextInputFormatter.withFunction((oldValue, newValue){
    if (newValue.text == "a") {
      return oldValue;
    }
    return oldValue;
  });
}
class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon((Icons.mail)),//Sonunda ikon olmasini saglar.
          border: OutlineInputBorder(),//Etrafini kutuyla sarar.
          labelText: LanguageItems.mailTitle,//Kutunun basina yazi ekler
          // fillColor: Colors.white,
          // filled: true, Butonun icinin rengini ayarla. 
  );
}