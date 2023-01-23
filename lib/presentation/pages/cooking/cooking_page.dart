import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/application/cooking_cubit/cooking_cubit.dart';
import 'package:recipe_app/domain/cooking/cooking_meals..dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CookingPage extends StatefulWidget {
  final String id;
  const CookingPage({super.key, required this.id});

  @override
  State<CookingPage> createState() => _CookingPageState();
}

class _CookingPageState extends State<CookingPage> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    context.read<CookingCubit>().getCooking(widget.id);
    return Scaffold(
      body: BlocBuilder<CookingCubit, CookingState>(
        builder: (context, state) {
          return state.map(loading: (_) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (value) {
            final cooking = value.cooking.meals;
            return ListView.builder(
                itemCount: cooking.length,
                itemBuilder: (context, index) {
                  final data = cooking[index];

                  String? videoUrl =
                      YoutubePlayer.convertUrlToId(data.strYoutube!);

                  return Column(
                    children: [
                      Image.network(data.strMealThumb!),
                      Text(data.idMeal!),
                      Text(data.strInstructions!)
                    ],
                  );
                });
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
