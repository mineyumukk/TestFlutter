import 'package:firstapp/core/random_image.dart';
import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(//ListTile ile ic iece kullanilir genellikle.
          //Goruntunun 
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(),
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                minVerticalPadding: 0,
                dense:true,
                leading: 
                  Container(height:200, width:30, alignment:Alignment.topCenter ,child: const Icon(Icons.money_outlined)), //Para ikonunu ekler.
                trailing: const SizedBox(width:20, child: Icon(Icons.chevron_right)), //Appte sağ tarafa ileri ikonunu ekler.
              ),
            ),
          )
        ]),
      ),
    );
  }
}