import 'dart:html';

import 'package:dio/dio.dart';
import 'package:firstapp/model/user_model.dart';
import 'package:flutter/material.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {

  List<UsersModelData>? _items;//? data olmayabilir anlamina gelir.
  String? name;
  bool _isLoading =false;
  @override
  void initState(){
    super.initState();
    name= 'mine';
    fetchPostItems();
  }
  void _changeLoading(){
    setState(() {
      _isLoading = !_isLoading;
    });
  }
  
  Future<void> fetchPostItems() async {
    _changeLoading();
    final response = await Dio().get('https://reqres.in/api/users?page=2');
    
    if (response.statusCode == HttpStatus.ok) {
      final _datas=response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => UsersModelData.fromJson(e)).toList();//Map ile yeni bir obje uretilir.
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(modelData:_items![index]);
      },),
    );
  }
}
/////////BU YAPTIGIMIZIN ILK HALI///////////
// class _PostCard extends StatelessWidget {
//   const _PostCard({
//     Key? key,
//     required List<UsersModelData>? items,
//   }) : _items = items, super(key: key);

//   final List<UsersModelData>? _items;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin:const EdgeInsets.only(bottom: 10),
//       child: ListTile(
//         title: Text(_items?[index].lastName ?? ''),
//       ),
//     );
//   }
// }
//////////////BU OZELLESMIS HALI/////////////////
class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required UsersModelData modelData,
  }) : _modelData = modelData, super(key: key);

  final UsersModelData _modelData;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(_modelData.lastName ?? ''),
      ),
    );
  }
}