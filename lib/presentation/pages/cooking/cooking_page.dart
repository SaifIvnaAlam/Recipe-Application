import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';
import 'package:recipe_app/application/cooking_cubit/cooking_cubit.dart';
import 'package:recipe_app/domain/cooking/cooking_meals..dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../util/app_style.dart';
import '../../util/my_button.dart';
import '../../util/size_config.dart';

class CookingPage extends StatefulWidget {
  final String id;
  const CookingPage({super.key, required this.id});

  @override
  State<CookingPage> createState() => _CookingPageState();
}

class _CookingPageState extends State<CookingPage> {
  @override
  Widget build(BuildContext context) {
    context.read<CookingCubit>().getCooking(widget.id);
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
        child: BlocBuilder<CookingCubit, CookingState>(
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

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(data.strMealThumb!)),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              "INSTRUCTION",
                              style: kEncodeSansBold.copyWith(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ReadMoreText(
                            data.strInstructions!,
                            trimLines: 6,
                            trimMode: TrimMode.Line,
                            delimiter: " ",
                            trimCollapsedText: " Read more...",
                            trimExpandedText: " Show less",
                            style: kEncodeSansRagular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              color: kWhite,
                            ),
                            moreStyle: kEncodeSansBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                color: kblack),
                            lessStyle: kEncodeSansBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                color: kblack),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          MyButton(
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  });
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
