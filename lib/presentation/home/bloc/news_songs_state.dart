import 'package:spotify/domain/entities/song/song.dart';

abstract class PlayListState {}

class NewsSongsLoading extends PlayListState{}

class NewsSongsLoaded extends PlayListState{
  final List<SongEntity> songs;
  NewsSongsLoaded({required this.songs});
}

class NewsSongsLoadFailure extends PlayListState {

}

