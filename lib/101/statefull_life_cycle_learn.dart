import 'package:flutter/material.dart';

class StatefulLifeCycle extends StatefulWidget {
  //Degisim var oldugu surece hayat vardir ve hayati da Stateful widgeti kullanarak yonetiriz
  const StatefulLifeCycle({Key? key, required this.message}) : super(key: key);
  final String message; 
  @override
  State<StatefulLifeCycle> createState() => _StatefulLifeCycleState();
}

class _StatefulLifeCycleState extends State<StatefulLifeCycle> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {//Init state gibi calisir ama init stateden sonra calisir
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message ) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }
  @override
  void dispose() {//Sayfadan cikildigi andir.
    super.dispose();
    _message = '';
  }

  @override
  void initState() {//Constructor metod islevi gorur
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += "Cift";
    } else {
      _message += "Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
      ? TextButton(onPressed: () {}, child: Text(_message))
      :ElevatedButton(onPressed: () {}, child: Text(_message))
    );
  }
}