import 'package:flutter/material.dart';
import 'package:flutter_application_1/cat_details_screen.dart';
import 'package:flutter_application_1/model/cat.dart';

class CatCard extends StatelessWidget {
  final Cat cat;


  const CatCard({super.key, 
     required this.cat 
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(child:Column(
        
        children: [
        //cat img
        Expanded(
          child: Image.network( 
            width: double.infinity,
            fit:BoxFit.contain,
            cat.imageLink),
        ),
        //cat name
        Text(cat.name)
      ],
      )),
    );
  }
}