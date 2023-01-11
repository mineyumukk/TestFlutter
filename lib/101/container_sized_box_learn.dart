import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
        width: 300,
        height: 300,
        child: Text('a' * 507),
      ),
      const SizedBox.shrink(),
      SizedBox.square(
        dimension: 50,
        child: Text('b'*50),
      ),
      Container(
        //height: 60,
        constraints: const BoxConstraints(maxWidth: 200, minWidth: 100, minHeight: 80, maxHeight: 200),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: ProjectUtility.boxDecoration,
        child : Text('e' * 107, maxLines: 5,),
      )
      ],
      )
    );
  }
}
class ProjectUtility {
  static BoxDecoration boxDecoration =BoxDecoration(
    borderRadius:  BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.red, Colors.black12]),
          boxShadow: const [BoxShadow(color: Colors.deepPurple, 
                            offset: Offset(0.1, 1), blurRadius: 12)],
        border: Border.all(width: 10, color: Colors.cyan),
  );
}
class ProjectContainerDecoration extends BoxDecoration{
    ProjectContainerDecoration():super(
      borderRadius:  BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.red, Colors.black12]),
          boxShadow: const [BoxShadow(color: Colors.deepPurple, 
                            offset: Offset(0.1, 1), blurRadius: 12)],
        border: Border.all(width: 10, color: Colors.cyan),
    );
}