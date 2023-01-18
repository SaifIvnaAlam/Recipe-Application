import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/application/meal_cubit/meals_cubit.dart';
import 'package:recipe_app/presentation/pages/cooking/cooking_page.dart';

class MealPage extends StatelessWidget {
  final String mealName;
  const MealPage({super.key, required this.mealName});

  @override
  Widget build(BuildContext context) {
    context.read<MealsCubit>().getMeals(mealName);
    return Scaffold(
      body: BlocBuilder<MealsCubit, MealsState>(
        builder: (context, state) {
          return state.map(loading: (_) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (value) {
            final meal = value.mealList;

            return ListView.builder(
              itemCount: meal.meals.length,
              itemBuilder: (context, index) {
                final mealdata = meal.meals[index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CookingPage(
                                    id: mealdata.idMeal,
                                  )),
                        );
                      },
                      child: ListTile(
                        leading: Image.network(mealdata.strMealThumb),
                        title: Row(
                          children: [
                            Text(mealdata.strMeal),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          }, error: (_) {
            return Center(
              child: CircularProgressIndicator(),
            );
          });
        },
      ),
    );
  }
}
