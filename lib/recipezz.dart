import 'package:flutter/material.dart';
import 'package:recipe_app/application/categories/cubit/categories_cubit.dart';
import 'package:recipe_app/application/meal_cubit/meals_cubit.dart';
import 'package:recipe_app/infarstructure/categories_repository.dart';
import 'package:recipe_app/presentation/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'infarstructure/meal/meal_repository.dart';

class Recipezz extends StatelessWidget {
  const Recipezz({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoriesCubit(CategoriesRepository()),
        ),
        BlocProvider(
          create: (context) => MealsCubit(MealReposotory()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
