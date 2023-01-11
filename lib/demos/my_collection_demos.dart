import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items; //late sonradan deger almayacaksa kullanilir.
  //Hatta soyleki sonradan deger gelicek ama constructor zamaninda gelicek demek.
  //final ise bu degerin bir daha hic degismeyecegi sadece constructor aninda alicak ve kullanicak demek
  
  @override
  void initState() {//Bir statefulun constructor'i da burasidir.
    super.initState();
    _items=CollectionItems().items;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length, //Listenin uzunlugu kadar _items cizilir
        padding: PaddingUtility().paddingHorizontal,//En distan sagdan soldan 20lik bosluk birakmak icin
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  }) : _model = model, super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom, //Cardi sadece asagidan 40lik bosluk biraktirir.
      child: SizedBox(//Card icin 300luk bosluk birakir.
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath)),
              Padding(
                padding: PaddingUtility().paddingTop,//Sadece ustten 10lik bosluk birakir
                child: Row(//Herhangi bir widgetin yan yana gelmesini saglar
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,//Row widgetinda iki text arasina boslugu bu sekilde veririz. Yan yana bosluk olur.
                  children:[
                    Text(_model.title),
                    Text('${_model.price} eth'),//$ simgesini double ifade aldigimiz icin kullandik.
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Constructor model olusturuldu.
class CollectionModel {
    final String imagePath;
    final String title;
    final double price;

  CollectionModel(//Boyle birden fazla kullanim durumlarinda yollanilan degerle eslesmesi icin named kullaniriz.
  //Bu yuzden suslu parantezle birlikte required eklenir. Bu seklde verilmedigi surece bu model olusmaz!!!
    {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems(){
      items=[
      CollectionModel(imagePath:ProjectImages.imageCollection, title:'Abstract Art', price:3.4),
      CollectionModel(imagePath:ProjectImages.imageCollection, title:'Abstract Art1', price:3.4),
      CollectionModel(imagePath:ProjectImages.imageCollection, title:'Abstract Art2', price:3.4),
      CollectionModel(imagePath:ProjectImages.imageCollection, title:'Abstract Art3', price:3.4),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = 'assets/png/image_collection.png';
}