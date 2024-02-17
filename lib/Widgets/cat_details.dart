
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cat.dart';

class CatDetailsWidget extends StatelessWidget {
  final Cat cat;
  const CatDetailsWidget({super.key, 
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Cat image
        Image.network(cat.imageLink
        ),
        // Cat name
        Text(cat.name, style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold
        ),),
        // Cat info
        Text('Origin: ${cat.origin}'),
        Text("Max Weight: ${cat.maxWeight}"),
        Text("Min Weight: ${cat.minWeight}"),
        Text("Length: ${cat.length}"),
      ],
    );
  }
}
