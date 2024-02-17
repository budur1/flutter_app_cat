import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/cat_details.dart';
import 'package:flutter_application_1/model/cat.dart';

class CatDetailsScreen extends StatelessWidget {
 final Cat cat;
  const CatDetailsScreen({Key? key, required this.cat}) : super(key: key); // Corrected the constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title:  Text(cat.name),
      centerTitle: true,
      ), 
      body: Center(
        child: CatDetailsWidget(cat: cat,),
      ),
    );
  }
}
