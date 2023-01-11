//13.09.22
import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({Key? key, this.isOkey=false}) : super(key: key);
  final bool isOkey;//Bunu gondermeyebilir o yuzden yukarida default olarak false atadik
  @override
  State<NavigateDetailLearnDart> createState() => _NavigateDetailLearnDartState();
}

class _NavigateDetailLearnDartState extends State<NavigateDetailLearnDart> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(//Sayfanin en ortasinda buton olacak diye ayarladik
        child: ElevatedButton.icon(//Icınde yazi yazabildiigmiz butondu
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkey);
          }, 
          icon: Icon(Icons.check, color: widget.isOkey ? Colors.red: Colors.green,), 
          label: widget.isOkey? const Text('Red') : const Text('Onayla')),
      ),
    );
  }
}