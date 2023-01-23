part of 'youtube_player_cubit.dart';

@freezed
class YoutubePlayerState with _$YoutubePlayerState {
  const factory YoutubePlayerState.loading() = _loading;
  const factory YoutubePlayerState.loaded() = _loaded;
}
