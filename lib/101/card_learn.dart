import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(//Card componenti ekranin bi tik onde durmasini saglar
            margin: ProjectMargins.cardMargin,//Paddinge benzer ama bu disariya dogrudur
            color: Colors.white,
            shape: StadiumBorder(side: BorderSide(width: 10,color: Colors.blue)),
            child: SizedBox(height: 200, width: 500,),
          ),
          Card(//Card componenti ekranin bi tik onde durmasini saglar
            margin: ProjectMargins.cardMargin,//Paddinge benzer ama bu disariya dogrudur
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(height: 200, width: 500,),
          ),

          const _CustomCard(child: SizedBox(
            height: 200, width: 500, 
            child: Center(child: Text('data')),))
        ],
      ),
    );
  }
}

class ProjectMargins{
  static const cardMargin= EdgeInsets.all(10);
} 

class _CustomCard extends StatelessWidget{
  const _CustomCard({Key? key, required this.child}) : super(key:key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
    return Card(//Card componenti ekranin bi tik onde durmasini saglar
      margin: ProjectMargins.cardMargin,//Paddinge benzer ama bu disariya dogrudur
      color: Colors.white,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}