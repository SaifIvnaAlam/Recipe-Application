import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_player_state.dart';
part 'youtube_player_cubit.freezed.dart';

class YoutubePlayerCubit extends Cubit<YoutubePlayerState> {
  YoutubePlayerCubit() : super(const YoutubePlayerState.loading());
}
