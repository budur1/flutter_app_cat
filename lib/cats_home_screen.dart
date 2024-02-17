import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/cat_card.dart';
import 'package:flutter_application_1/main.dart';
class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: const Text("My Cats",textAlign:TextAlign.center,),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))],
        ),
        body: GridView.builder(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
          itemCount: cats.length,
          itemBuilder: (context, index) {
            final cat = cats[index];
            return CatCard(cat: cat,);
          },),
        );
  }
}
