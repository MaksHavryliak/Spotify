import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify/common/bloc/favorite_button/favorite_button_state.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/domain/entities/song/song.dart';

class FavoriteButton extends StatelessWidget {
  final SongEntity songEntity;

  const FavoriteButton({
    super.key,
    required this.songEntity,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteButtonCubit(),
      child: BlocBuilder<FavoriteButtonCubit, FavoriteButtonState>(
          builder: (context, state) {
            if (state is FavoriteButtonInitil) {
              return IconButton(
                onPressed: () {
                  context.read<FavoriteButtonCubit>().favoriteButtonUpdated(songEntity.songId);
                },
                icon: Icon(
                  songEntity.isFavorite ? Icons.favorite : Icons
                      .favorite_outline_outlined,
                  size: 20,
                  color: AppColors.darkGrey,
                ),
              );
          }
            if (state is FavoriteButtonUpdatet) {
              return IconButton(
                onPressed: () {
                  context.read<FavoriteButtonCubit>().favoriteButtonUpdated(songEntity.songId);
                },
                icon: Icon(
                  state.isFavorite ? Icons.favorite : Icons
                      .favorite_outline_outlined,
                  size: 20,
                  color: AppColors.darkGrey,
                ),
              );
            }
            return Container();
          }
      ),
    );
  }
}
