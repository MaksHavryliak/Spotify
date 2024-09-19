abstract class FavoriteButtonState{}

class FavoriteButtonInitil extends FavoriteButtonState{}

class FavoriteButtonUpdatet extends FavoriteButtonState {
  final bool isFavorite;

  FavoriteButtonUpdatet({required this.isFavorite});
}
