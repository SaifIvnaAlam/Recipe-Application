import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/application/categories/cubit/categories_cubit.dart';
import 'package:recipe_app/presentation/pages/meals/meal_page.dart';
import 'package:recipe_app/presentation/util/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CategoriesCubit>().getCategories();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "What are you having today?",
          style: TextStyle(color: Colors.black),
        ),
      ),
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
                              ),
                            ),
                          );
                        },
                        child: ItemWidgets(
                            image: ctgry.strCategoryThumb, name: name))
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
