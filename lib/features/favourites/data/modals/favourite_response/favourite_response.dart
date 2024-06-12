import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_response.freezed.dart';
part 'favourite_response.g.dart';

@freezed
class FavouriteResponse with _$FavouriteResponse {
    const factory FavouriteResponse({
        bool? acknowledged,
        int? deletedCount,
    }) = _FavouriteResponse;

    factory FavouriteResponse.fromJson(Map<String, dynamic> json) => _$FavouriteResponseFromJson(json);
}