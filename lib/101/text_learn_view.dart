import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget{ //StatelessWidget --> Durumsuz widget
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Ali';

  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'Buy the best one',
            maxLines: 2,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.headline4?.copyWith(color: ProjectColor.welcomeColor),
          ),          
          Text(userName ?? ''),
          Text(keys.welcome),
          ], 
        )) 
    );
  }
}

class ProjectColor{
  static Color welcomeColor= Colors.blue;
}

class ProjectKeys{
  final String welcome = 'Merhaba';
}