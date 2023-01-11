import 'package:flutter/material.dart';


class AppBarLearnView extends StatelessWidget {//Bi sayfa yapmak istiyorsam su anlık boyle yapacagım.
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),//Sol ok tusu
        actions: //Sag tarafa eklemeler yapmak icin
        [
          IconButton(onPressed: (){ }, 
          icon: const Icon(Icons.chat_rounded)),
          const Center(child: CircularProgressIndicator(color: Colors.lightBlueAccent,))
        ],
      ),
    );

  }
}