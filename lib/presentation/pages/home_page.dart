import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/application/categories/cubit/categories_cubit.dart';
import 'package:recipe_app/presentation/pages/meals/meal_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../util/app_style.dart';
import '../util/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    context.read<CategoriesCubit>().getCategories();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.orange.shade400,
              Colors.orange.shade600,
              Colors.orange.shade700,
              Colors.orange.shade800,
            ])),
        child: BlocBuilder<CategoriesCubit, CategoriesState>(
          builder: (context, state) {
            return state.map(loading: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, loaded: (value) {
              final categories = value.category;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 36,
                    itemCount: categories.categories.length,
                    itemBuilder: (context, index) {
                      final ctgry = categories.categories[index];
                      var name = ctgry.strCategory;

                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MealPage(
                                    mealName: name,
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Positioned(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: SizedBox(
                                        child: Image.network(
                                      ctgry.strCategoryThumb,
                                      fit: BoxFit.cover,
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(ctgry.strCategory,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kEncodeSansSemiBold.copyWith(
                                  color: kDarkBrown,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3))
                        ],
                      );
                    },
                  ),
                ),
              );
            }, error: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            });
          },
        ),
      ),
    );
  }
}
