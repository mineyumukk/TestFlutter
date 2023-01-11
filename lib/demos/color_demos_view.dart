//import 'dart:js';
import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  //Degisimin oldugu yerde hayat dongusu vardır ve statefull kullanmamiz gerekir
  const ColorDemos({Key? key, required this.initialColor,}) : super(key: key);
  final Color? initialColor;//initialColor: bu sayfada gorunecek ilk colorin ne oldugunu alabiliriz.

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor; //bacgroundColor'in null olmasini alt componentin kontrol etmesi lazimdi onu da burada tanimladik.
  //kabul etsin diye NULLABLE yaptik ki proje sayfalarinda surekli property yazmayalim  
  @override
  void initState() {//Build calismadan once burasi calistigi icin backgroundcolori burada default degerini verdik.
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;//initialColor null gelirse background'in baslangıc rengini transparent ata demek
  }
  //Flutter da Debug yapmak icin 3 yontem vardir 
  //1.print kullan
  //2.inspect kullan
  //3.Start Debugging kullan
  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {//lifeCycle'in en guzel ornegi
    super.didUpdateWidget(oldWidget);
    //print(widget.initialColor !=_backgroundColor);
    if (widget.initialColor !=_backgroundColor && widget.initialColor!=null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color){
    setState(() {//setState guncelleme yapar. Guncellemek gerekiyorsa setState kullan!!! 
      _backgroundColor= color;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,//Bu kod satiri her butona bastigimizda, arkaplanin butonla ayni renk olmasini saglar.
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: const [
          //Iconun dondurdugu deger widget, bu da her sey olabilir demek
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow),label: 'Yellow',),      
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red),label: 'Red',),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue),label: 'Blue',),

      ]),
    );
  }

//Metodların donus tipi ve donus degeri muhakkak olmasi gerekir 
//Logic olan onTap'i extract methodla build olan yerden kaldirdik.
  void _colorOnTap(value) {//Herbir butona basildigi anda butonla aynı renk deger dondurmesini saglar. Bunuda if else ile kosulla ekrana yansittik.
        if (value==_MyColors.red.index) {
          changeBackgroundColor(Colors.red);
        }
        else if(value==_MyColors.blue.index){
          changeBackgroundColor(Colors.blue);
        }
        else if(value==_MyColors.yellow.index){
          changeBackgroundColor(Colors.yellow);
        }
      }
}


//enum basit bir numaralandirma sinifidir.
enum _MyColors {yellow,red,blue}


class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key, required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,width: 10,
      color:color);
  }
}