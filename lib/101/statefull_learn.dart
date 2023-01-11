import 'package:firstapp/product/languages/languages_items.dart';
import 'package:flutter/material.dart';

import '../product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int  _countValue=0;//'_'dart dilinde private anlamina gelir.File private için _ kullandik.
  void incrementValue(){  }


  void _counterValue(bool isIncrement){
    if (isIncrement) {
      _countValue = _countValue+1;
    } else {
      _countValue = _countValue-1;
    }

      setState(() {//SetState ile data güncelleme yapilir 
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(//Row iki butonun istedigimiz sekilde yan yana durmasını saglar
        mainAxisSize: MainAxisSize.min, //Butonların ayni degerde sıkısmasını saglar.
        children: [
          _incrementButton(),
          _deicrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline5,)),
          const CounterHelloButton(),
        ],
      ),//Center Textin ortada durmasini saglar
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
          onPressed: () {
            _counterValue(true);
          },
          child: const Icon(Icons.add),//Butonun '+' ile gozukmesini saglar
          );
  }
  
  Padding _deicrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: (){
          _counterValue(false);
        },
        child: const Icon(Icons.remove),
    ));
  }
}