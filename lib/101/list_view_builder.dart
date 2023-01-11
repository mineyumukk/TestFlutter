import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(//itemCountla istenilen kadar data getirmeyi saglar.
        separatorBuilder: (context, index){
          return const Divider();//Herbir data arasina bosluk atar.
        },
        itemBuilder: (context, index){
          print(index);
        return SizedBox(//SizedBox ile ilk sayfaya veridgimiz height degerine sigacak kadar resim ekler
          height: 200,
          child: Column(
            children: [
              Expanded(//Column kullandigimz icin SizedBox ekledigimiz anda hata verdi.Bunu gidermek icinde Expanded ekledik.
              //Boylece hata ortadan kalkmis olacak
                child: Image.network('https://picsum.photos/200/300')),
              Text('$index')
            ],
          ),
        );
      }, itemCount: 50,),//itemBuilder callback metottur
    );
  }
}