import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/favourites/data/datasources/favourites_client.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/navigation/dio/header.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class FavouritesRemoteDatasource {
  final FavouritesClient _client;

  factory FavouritesRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.options.headers
        .addAll({HeaderKeys.tokenHeaderKey: HeaderValues.userToken});
    dio.options.connectTimeout = AppConfig.connectTimeout;
    dio.options.receiveTimeout = AppConfig.receiveTimeout;
    final FavouritesClient client = FavouritesClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return FavouritesRemoteDatasource._(client);
  }

  FavouritesRemoteDatasource._(this._client);
  Future<BaseResponse<FavouritesModal>> getFavourites() async {
    final BaseResponse<FavouritesModal> response =
        await _client.getFavourites();
    return response;
  }

  Future<BaseResponse<FavouritesModal>> addFavourites(
      FavouriteBody body) async {
    print(body.toJson().toString());
    final BaseResponse<FavouritesModal> response =
        await _client.addFavourites(body.toJson());
    return response;
  }

  Future<BaseResponse<FavouriteResponse>> removeFavourites(
      FavouriteBody body) async {
    print(body.toJson().toString());
    final BaseResponse<FavouriteResponse> response =
        await _client.removeFavourites(body.toJson());
    return response;
  }
}
