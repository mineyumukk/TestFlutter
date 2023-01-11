import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({Key? key}) : super(key: key);
  //Padding iki component arasında bosluk vermeyi saglar.
  //Bosluk icin padding
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Padding(padding: const EdgeInsets.all(10),//.all containerin her bir cevresinden bosluklar olusturur.
            child: Container(color: Colors.white, height: 100,width: 200,)),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(height: 100,width: 200, color: Colors.red,
            // child: Container(
            //   width: 150,
            //   height: 50,
            //   child: const Text('jslakjlfs',style: TextStyle(color: Colors.black)),
            // )
          )
         ),
        ],
      ),
    );
  }
}