import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/application/categories/cubit/categories_cubit.dart';

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
                final giveaway = categories.categories[index];

                return Column(
                  children: [
                    ListTile(
                      leading: Image.network(giveaway.strCategoryThumb),
                      title: Text(
                        giveaway.strCategory,
                        style: const TextStyle(fontWeight: FontWeight.bold),
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
