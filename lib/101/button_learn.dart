//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
          style: ButtonStyle(
            mouseCursor: MaterialStateProperty.all(MouseCursor.defer),//Mouse normal halinde kalıyor,
            minimumSize: MaterialStateProperty.all(const Size(5, 5)),
            //backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.greenAccent; //Mouse'a basıldığı anda butonu yeşil renge dönüştürür
              }
              return Colors.blue;
            })),
          onPressed: () {},
          child: Text(//Background bos olup sadece yazi olursa
            'Save', style: Theme.of(context).textTheme.headline5)),
          ElevatedButton(onPressed: () {}, child: const Text('Data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {
              // servise istek at
              // sayfanin rengini duzenle
              // gibi musterinin isteklerini gerceklestirebilirz
            }, 
            child: const Icon(Icons.add)),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white10,
              shape:const CircleBorder()
            ),
            onPressed: () {}, 
            child: const Text('data')),
            OutlinedButton.icon(onPressed: () {}, icon:const Icon(Icons.abc), label:const Text('data')),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container( //Ekrana beyazlık ekledik
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10), //Container ile buton arasına bosluk atar
          ElevatedButton(//Arkası renkli koseli yapabilecegimiz buton
          onPressed: () {}, 
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: const RoundedRectangleBorder//Butonun köselerine yariçap kazandirir
            (borderRadius:BorderRadius.all(Radius.circular(20)))
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20, bottom:10),//Padding anlatılınca buraya gel
            child: Text('Place Bid',
              style: Theme.of(context).textTheme.headline5,
            ),
           ),
          ),
        
        // final ButtonStyle flatButtonSytle = TextButton.styleFrom(
        //   primary: Colors.white
        //   minumunSize: Size(89,36),
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(2.0)),
        // ));
        // TextButton(
        //   style:flatButtonStyle,
        //   onPressed:() {},
        //   child:Text('data')
        // ),
      ],
      ),
    );
  }
}

//Borders:
//CircleBorder(), RoundedRectangleBorder()