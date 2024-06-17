import 'package:flutter/material.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/favourites/data/datasources/favourites_remote_datasource.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/features/favourites/domain/repositories/favourites_repository.dart';

class FavouritesRepositoryImpl extends FavouritesRepository {
  final FavouritesRemoteDatasource _remoteDataSource =
      FavouritesRemoteDatasource();

  @override
  Future<FavouritesModal?> getFavourites() async {
    try {
      final BaseResponse<FavouritesModal> favourites =
          await _remoteDataSource.getFavourites();
      return favourites.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<FavouritesModal?> addFavourites(FavouriteBody body) async {
    try {
      final BaseResponse<FavouritesModal> response =
          await _remoteDataSource.addFavourites(body);
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<FavouriteResponse?> removeFavourites(FavouriteBody body) async {
    try {
      final BaseResponse<FavouriteResponse> response =
          await _remoteDataSource.removeFavourites(body);
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
