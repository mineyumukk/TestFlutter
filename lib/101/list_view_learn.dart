import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}
//ListView her çalıştıgında defada tekrar tekrar cizilir fakat bellekte degerlerini tutmaz

//Listview de sonsuzluk vardir ve bizde bunu height ve width ile ayarlayacagiz.
class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(//listview da icerisine children alir.
      padding: EdgeInsets.zero,
        children: [
          FittedBox(//Sayfanin boyutuna gore yaziyi buyutup kucultur.
            child: Text('Merhabalar', 
            style: Theme.of(context).textTheme.headline1,
            maxLines: 1, // yazinin tek satira sigmasini saglar. yazinin devami gozukse de gozukmese de bu property'i kullanabiliriz.
            //textScaleFactor: 0.8,// bu property, yazinin sayfada bir butun halinde gorunmesini saglar ve yaziyi buyutup kucultur. Ama bunu kullanmiyoruz bunun yerine fittedbox widgetini kullaniyoruz.
            ),
          ),
          Container(color: Colors.red,height: 300,width: 300,),
          const Divider(thickness: 5.2, color: Colors.grey,),// Divider iki container arasinda cizgi halinde bosluk saglar.

          SizedBox(//SizedBox'i height ile 
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,//scrolDirection listviewi sutunlastırır.Dikey yonde bolmesini saglar.
              children: [
                Container(color: Colors.green, width: 100,),
                Container(color: Colors.white, width: 100,), 
                Container(color: Colors.green, width: 100,), 
                Container(color: Colors.white, width: 100,), 
                Container(color: Colors.green, width: 100,), 
              ],
            ),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
          //////XXXXXXXXXXXXXXXXXXXXXX///////////
          FittedBox(//Sayfanin boyutuna gore yaziyi buyutup kucultur.
            child: Text('Merhaba', 
            style: Theme.of(context).textTheme.headline1,
            maxLines: 1, // yazinin tek satira sigmasini saglar. yazinin devami gozukse de gozukmese de bu property'i kullanabiliriz.
            //textScaleFactor: 0.8,// bu property, yazinin sayfada bir butun halinde gorunmesini saglar ve yaziyi buyutup kucultur. Ama bunu kullanmiyoruz bunun yerine fittedbox widgetini kullaniyoruz.
            ),
          ),
          Container(color: Colors.red,height: 300,width: 300,),
          const Divider(thickness: 5.2, color: Colors.grey,),// Divider iki container arasinda cizgi halinde bosluk saglar.

          SizedBox(//SizedBox'i height ile 
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,//scrolDirection listviewi sutunlastırır.Dikey yonde bolmesini saglar.
              children: [
                Container(color: Colors.green, width: 200,),
                Container(color: Colors.white, width: 200,), 
                Container(color: Colors.green, width: 200,), 
                Container(color: Colors.white, width: 200,), 
                Container(color: Colors.green, width: 200,), 
              ],
            ),
          ),          
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('Hello');
  }
  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}