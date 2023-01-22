import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  final String? image;
  final String? name;

  const ItemWidgets({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(image!),
            ),
          ),
        ),
        Text(name!)
      ],
    );
  }
}
