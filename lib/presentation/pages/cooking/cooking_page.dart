import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/application/cooking_cubit/cooking_cubit.dart';

class CookingPage extends StatelessWidget {
  final String id;
  const CookingPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<CookingCubit>().getCooking(id);
    return Scaffold(
      body: BlocBuilder<CookingCubit, CookingState>(
        builder: (context, state) {
          return state.map(loading: (_) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (value) {
            final cooking = value.cooking.meals;
            return ListView.builder(
                itemCount: cooking.length,
                itemBuilder: (context, index) {
                  final data = cooking[index];
                  return Text(data.idMeal);
                });
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
