import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/application/categories/cubit/categories_cubit.dart';
import 'package:recipe_app/application/cooking_cubit/cooking_cubit.dart';
import 'package:recipe_app/application/meal_cubit/meals_cubit.dart';
import 'package:recipe_app/infarstructure/categories_repository.dart';
import 'package:recipe_app/infarstructure/cooking/cooking_repository.dart';
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
        BlocProvider(
          create: (context) => CookingCubit(CookingRepository()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
