import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipe_app/application/meal_cubit/meals_cubit.dart';
import 'package:recipe_app/presentation/pages/cooking/cooking_page.dart';

import '../../util/app_style.dart';

class MealPage extends StatelessWidget {
  final String mealName;
  const MealPage({super.key, required this.mealName});

  @override
  Widget build(BuildContext context) {
    context.read<MealsCubit>().getMeals(mealName);
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
            ],
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              return state.map(loading: (_) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, loaded: (value) {
                final meal = value.mealList;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MasonryGridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    itemCount: meal.meals.length,
                    itemBuilder: (context, index) {
                      final mealdata = meal.meals[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Positioned(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: SizedBox(
                                      child: Image.network(
                                    mealdata.strMealThumb,
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(mealdata.strMeal,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kEncodeSansBold.copyWith(
                                color: kDarkBrown,
                              ))
                        ],
                      );
                    },
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
      ),
    );
  }
}
