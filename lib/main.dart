// import 'package:firstapp/101/scaffold_learn.dart';
// import 'package:firstapp/101/text_learn_view.dart';
// import '101/container_sized_box_learn.dart';
// import 'package:firstapp/101/app_bar_learn.dart';
// import 'package:firstapp/101/card_learn.dart';
// import 'package:firstapp/101/card_learn.dart';
import 'package:firstapp/101/color_learn.dart';
//import 'package:firstapp/101/image_learn.dart';
//import 'package:firstapp/101/navigation_learn.dart';
import 'package:firstapp/202/services/service_learn_view.dart';
import 'package:firstapp/demos/my_demos_view.dart';
//import 'package:firstapp/demos/my_demos_view.dart';
//import 'package:firstapp/service/user_service.dart';
// import 'package:firstapp/101/list_view_builder.dart';
// import 'package:firstapp/demos/my_collection_demos.dart';
// import 'package:firstapp/101/list_view_learn.dart';
// import 'package:firstapp/demos/color_demos_view.dart';
//import 'package:firstapp/demos/color_lifecycle_view.dart';
// import 'package:firstapp/demos/my_demos_view.dart';
// import 'package:firstapp/101/page_view_learn.dart';
// import 'package:firstapp/101/statefull_life_cycle_learn.dart';
// import 'package:firstapp/101/text_field_learn.dart';
// import 'package:firstapp/demos/my_demos_view.dart';
// import 'package:firstapp/demos/note_demos_view.dart';
// import 'package:firstapp/101/custom_widget_learn.dart';
// import 'package:firstapp/101/list_tile_learn.dart';
// import 'package:firstapp/demos/my_demos_view.dart';
// import 'package:firstapp/101/image_learn.dart';
// import 'package:firstapp/demos/note_demos_view.dart';
// import 'package:firstapp/101/image_learn.dart';
// import 'package:firstapp/101/padding_learn.dart';
// import 'package:firstapp/101/stetaless_learn.dart';
// import 'package:firstapp/101/icon_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import '101/statefull_learn.dart';
// import '101/button_learn.dart';


void main() {
  runApp(const MyApp());//Projeyi baslatır
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//Projenin ana semasinin cizildigi yer
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        errorColor: ColorStatics.sulu,
        appBarTheme: const AppBarTheme(
          centerTitle: true,//Yazinin hep ortali olmasini saglar.
          backgroundColor: Colors.transparent,
          elevation: 0,//sayfayi bir butunmus gibi gosterir
          systemOverlayStyle: SystemUiOverlayStyle.light,//mobil applerde saatin olduğu kismin koyu veya acik tema olmasini saglar.
        ),
      ),
      home:  MyDemosView(),
    );
  }
}

// import 'package:firstapp/model/user_model.dart';
// import 'package:firstapp/service/user_service.dart';
// import 'package:flutter/material.dart';

// void main() { 
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {

//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final UserService _userService = UserService();
//   bool? isLoading;
//   List<UsersModelData?> users = [];

//   @override
//   void initState() {
//     super.initState();
//     _userService.fetchUsers().then((value) {
//       if (value != null && value.data != null) {
//         setState(() {
//           users = value.data!;
//           isLoading = true;
//         });
//       }
//       else{
//         setState(() {
//           isLoading = false;
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Material App Bar'),
//         ),
//         body: isLoading == null? const
//         Center(child: CircularProgressIndicator())
//         : isLoading==true ? ListView.builder(
//           itemCount:users.length,
//           itemBuilder: ((context, index){
//             return ListTile(
//               title: Text("${users[index]!.firstName! +users[index]!.lastName!}"),
//               subtitle: Text(users[index]!.email!),
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(users[index]!.avatar!),)
//             );
//           }
//         )
//       ): const Center(
//         child: Text('Bir sorun olustu..'),
//       )
//     ),);
//   }
// }