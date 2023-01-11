import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title='Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodButton(title:title, 
              //onPressed:() {}
              )),
          ),
          ),
          const SizedBox(height: 100,),
          CustomFoodButton(title: title, 
            //onPressed: () {}
          )
        ],
      )
    );
  }
}

class CustomFoodButton extends StatelessWidget with _ColorUtility, _PaddingUtility{
  CustomFoodButton({
    Key? key,
    // required this.redColor,
    required this.title,
    // required this.whiteColor,
  }) : super(key: key);

  // final Color redColor;
    final String title;
  // final Color whiteColor;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: redColor,
      shape: const StadiumBorder()),//Koselerini ayarliyo
      onPressed: () {},
      child: Padding(
        padding: normalPadding,
        child: Text(
          title, 
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color:whiteColor, fontWeight: FontWeight.bold)),
      ));
  }
}

class _ColorUtility {
  final Color whiteColor  = Colors.white;
  final Color redColor = Colors.red;
}

class _PaddingUtility {
  final normalPadding = const EdgeInsets.all(8.0); 
  final normal2xPadding = const EdgeInsets.all(16.0);
}