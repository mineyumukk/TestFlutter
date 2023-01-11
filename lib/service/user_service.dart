// import 'dart:convert';
// //import 'package:flutter_restfullapi/model/user_model.dart';
// import '../model/user_model.dart';
// import 'package:http/http.dart' as http;

// class UserService {
//   final String url= "https://reqres.in/api/users?page=2";
//   Future<UsersModel?> fetchUsers() async{
//     var restful = await http.get(Uri.parse(url));
//     if (restful.statusCode == 200) {
//       var jsonBody = UsersModel.fromJson(jsonDecode(restful.body));
//       return jsonBody;
//     }
//     else{
//       print("Istek basarisiz oldu. => ${restful.statusCode}");
//     }
//     return null;
//   }
// }