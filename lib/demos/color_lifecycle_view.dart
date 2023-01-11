import 'package:firstapp/demos/color_demos_view.dart';
import 'package:flutter/material.dart';

class ColorLifecyle extends StatefulWidget {
  const ColorLifecyle({Key? key}) : super(key: key);

  @override
  State<ColorLifecyle> createState() => _ColorLifecyleState();
}

class _ColorLifecyleState extends State<ColorLifecyle> {
  Color? _backgroundColor;//backgroundColor belki proje boyunca hic kullanilmayabilir
  //Bu yuzden null degerini atadik. Onu da ? ile tanimladik.
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [//Bu appBar'in sag tarafina islemler yapmamizi saglar
        IconButton(
          onPressed: (){
            _changeBackground();
          }, 
          icon: const Icon(Icons.clear))//clear: Carpi ikonu
      ],),
      body: Column(
        children: [const Spacer(), 
        Expanded(child: ColorDemos(initialColor: _backgroundColor,))],
      ),
    );
  }

  void _changeBackground() {
    return setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}