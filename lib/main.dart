import 'package:flutter/material.dart';
import 'package:flutter_application_1/cats_home_screen.dart';
import 'package:flutter_application_1/data/all_cats.dart';
import 'package:flutter_application_1/model/cat.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();
void main() {
  // final listOfCatsAsJson = allCats;
  // final listOfCatsAsObjects = <Cat>[];

  // for(var i=0; i<listOfCatsAsJson.length; i++){
  //   final catAsJson = listOfCatsAsJson[i];
  //   final catAsObject = Cat.fromJson(catAsJson);
  //   listOfCatsAsObjects.add(catAsObject);
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatsHomeScreen(
        
      ),
    );
  }
}
