import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';
//Scaffold Uygulamanın iskeleti
class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('MERHABA',
        style: TextStyle(fontSize: 16)),
        ), 
      backgroundColor: Colors.black12,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, 
          builder: (context) => Container(
            height: 200,
          ));
        },
      ),
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 90,
        decoration:ProjectContainerDecoration(),
        child: BottomNavigationBar(items: const[
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
        ],)
      ),
    );
  }
}