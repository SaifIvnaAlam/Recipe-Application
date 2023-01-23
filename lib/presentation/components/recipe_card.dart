import 'package:flutter/material.dart';
import 'package:recipe_app/domain/categories.dart';
import 'package:recipe_app/domain/cooking/coocking.dart';

import '../../domain/category.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key, this.active, this.index, required this.category})
      : super(key: key);

  final bool? active;
  final int? index;
  final Categories category;

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 16 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: 0,
        right: 15.5,
        left: active! ? 32.5 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.1),
            blurRadius: blur,
            offset: Offset(0, offset),
          )
        ],
        image: DecorationImage(
            fit: BoxFit.cover, image: Image.network(category.strCategoryThumb)),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.3),
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    tileMode: TileMode.clamp,
                    stops: const [0.3, 0.6])),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 16,
                top: 10,
              ),
              height: 87,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              )),
              child: Text(
                "Name of the thing",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 84.75,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.5,
                      vertical: 5,
                    ),
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Recipe',
                      style: TextStyle(fontSize: 13, color: Colors.amber),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 8.65,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
