import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_body.freezed.dart';
part 'favourite_body.g.dart';

@freezed
class FavouriteBody with _$FavouriteBody {
  const factory FavouriteBody({
    required String id,
    required bool update,
    required String type,
  }) = _FavouriteBody;

  factory FavouriteBody.fromJson(Map<String, dynamic> json) =>
      _$FavouriteBodyFromJson(json);
}
