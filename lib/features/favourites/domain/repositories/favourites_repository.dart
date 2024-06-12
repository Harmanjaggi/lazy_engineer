import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';

abstract class FavouritesRepository {
  Future<FavouritesModal?> getFavourites();
  Future<FavouritesModal?> addFavourites(FavouriteBody body);
  Future<FavouriteResponse?> removeFavourites(FavouriteBody body);
}
