//13.09.22
import 'package:firstapp/101/navigate_detail_learn.dart';
//import 'package:firstapp/demos/my_demos_view.dart';
import 'package:flutter/material.dart';

//NAVIGATION WIDGETLAR ARASINDA DATA TRANSFERI YAPTIGIMIZ YER

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];//Secili olanlari array icine topladik.
  void addSelected(int index,bool isAdd){
    setState(() {//SetState ile guncelleme aldik ki guncellendigi an ekranda cizim calismali
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {//Bu kodu burada calistirdik cunku hangi indexe tikladigimizi itemBuilder'in icinden alabiliriz.
              final response = await navigateToWidgetNormal<bool>(context, 
              NavigateDetailLearnDart(
                isOkey: selectedItems.contains(index),
              ));              
              if (response is bool) {
                addSelected(index,response);//addSelected'a dogru indexi verebiliriz burada cağirdigimiz icin
          }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: selectedItems.contains(index) ? Colors.green : Colors.red,),
            ),
          );//Carprazli sacma bi sey gelen widget
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_sharp),
        onPressed: () async {
        
      },),
    );
  }
}

mixin NavigatorManager {//Mixin constructorsiz class analmina gelir.
  void navigateToWidget(BuildContext context, Widget widget){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
          return widget;//Hicbir ozellik eklemeden sadece bunlari kullandigimizda mobilde sol left butonu gorunur ve oyle cikis yapar.
        },
        fullscreenDialog: true,//Mobilde tepede carpi isareti ile cikis yapar
        settings: const RouteSettings(),
        ));
  }


    Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget){
    return Navigator.of(context).push<T>(
      MaterialPageRoute(builder: (context) {
          return widget;//Hicbir ozellik eklemeden sadece bunlari kullandigimizda mobilde sol left butonu gorunur ve oyle cikis yapar.
        },
        //fullscreenDialog: true,//Mobilde tepede carpi isareti ile cikis yapar
        settings: const RouteSettings(),
        ));
  }
}