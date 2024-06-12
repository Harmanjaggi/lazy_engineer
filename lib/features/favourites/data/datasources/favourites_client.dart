import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:retrofit/http.dart';

part 'favourites_client.g.dart';

@RestApi()
abstract class FavouritesClient {
  factory FavouritesClient(Dio dio, {String baseUrl}) = _FavouritesClient;

  @GET(AppConfig.favourites)
  Future<BaseResponse<FavouritesModal>> getFavourites();

  @POST(AppConfig.favourites)
  Future<BaseResponse<FavouritesModal>> addFavourites(
    @Body() Map<String, dynamic> body,
  );

  @POST(AppConfig.favourites)
  Future<BaseResponse<FavouriteResponse>> removeFavourites(
    @Body() Map<String, dynamic> body,
  );
}
