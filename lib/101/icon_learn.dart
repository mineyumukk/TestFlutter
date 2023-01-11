import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final String _title= 'Welcome Come Back';
  final IconSizes iconSize = IconSizes();
  final IconColor iconColor = IconColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(_title),
        titleTextStyle: const TextStyle(color: Colors.blue),
      ),
      body: Column(
        children:[
        IconButton(
        onPressed: () {},
        icon: Icon(Icons.message_outlined,
        size: iconSize.iconSmall,
        color: iconColor.green)),

        IconButton(
        onPressed: () {},
        icon: Icon(Icons.message_outlined,
        size: iconSize.iconSmall,
        color:Theme.of(context).backgroundColor)),
        ],),
    );
  }
}

class IconSizes{
  final double iconSmall = 40;
}

class IconColor{
  final Color green = Colors.green;
}
