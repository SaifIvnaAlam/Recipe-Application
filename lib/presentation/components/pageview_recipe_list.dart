// import 'package:flutter/material.dart';
// import 'package:recipe_app/domain/category.dart';
// import 'package:recipe_app/presentation/components/recipe_card.dart';

// import '../../domain/categories.dart';

// class PageViewRecipeList extends StatefulWidget {
//   final List<Categories> category;
//   const PageViewRecipeList({Key? key, required this.category}) : super(key: key);

//   @override
//   State<PageViewRecipeList> createState() => _PageViewRecipeListState();
// }

// class _PageViewRecipeListState extends State<PageViewRecipeList> {
//   final PageController pageController = PageController(viewportFraction: 0.75);

//   int currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 401,
//       child: PageView.builder(
//         padEnds: false,
//         controller: pageController,
//         itemCount: category,
//         physics: const BouncingScrollPhysics(),
//         itemBuilder: (context, index) {
//           bool active = index == currentPage;
//           return Opacity(
//             opacity: currentPage == index ? 1.0 : 0.5,
//             child: RecipeCard(
//               active: active,
//               index: index,
//            category: category,
//             ),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void initState() {
//     super.initState();

//     pageController.addListener(() {
//       int position = pageController.page!.round();
//       if (currentPage != position) {
//         {
//           setState(() {
//             currentPage = position;
//           });
//         }
//       }
//     });
//   }
// }
