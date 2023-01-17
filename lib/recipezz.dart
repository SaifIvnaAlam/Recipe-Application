import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/pages/home_page.dart';

class Recipezz extends StatelessWidget {
  const Recipezz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
