part of 'favourites_cubit.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.loading() = FavouritesLoading;
  const factory FavouritesState.failure(dynamic e) = FavouritesFailure;
  const factory FavouritesState.success(FavouritesModal data) =
      FavouritesSuccess;
}
