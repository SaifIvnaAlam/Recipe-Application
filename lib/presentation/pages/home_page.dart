import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/application/categories/cubit/categories_cubit.dart';
import 'package:recipe_app/presentation/pages/meals/meal_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CategoriesCubit>().getCategories();
    return Scaffold(
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          return state.map(loading: (_) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (value) {
            final categories = value.category;
            return ListView.builder(
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
                                  )),
                        );
                      },
                      child: ListTile(
                        leading: Image.network(ctgry.strCategoryThumb),
                        title: Row(
                          children: [
                            Text(
                              ctgry.strCategory,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ctgry.idCategory,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          }, error: (_) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          });
        },
      ),
    );
  }
}
