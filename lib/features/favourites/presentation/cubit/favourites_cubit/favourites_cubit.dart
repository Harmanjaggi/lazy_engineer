import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/features/favourites/data/repositories/favourites_repository_impl.dart';

part 'favourites_cubit.freezed.dart';
part 'favourites_state.dart';

class FavouritesCubit extends Cubit<FavouritesState> {
  final FavouritesRepositoryImpl repositories;
  FavouritesCubit(this.repositories) : super(const FavouritesState.loading()) {
    getData();
  }

  void getData() async {
    try {
      final data = await repositories.getFavourites();
      emit(FavouritesState.success(data ?? FavouritesModal()));
    } catch (e) {
      emit(FavouritesState.failure(e));
    }
  }
}
