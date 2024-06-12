import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_response.freezed.dart';
part 'book_response.g.dart';

@freezed
class BookResponse with _$BookResponse {
  const factory BookResponse(
    List<BookDetail>? result,
    int? totalCount,
    int? skip,
    int? limit,
  ) = _BookResponse;

  factory BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);
}

@freezed
class BookDetail with _$BookDetail {
    const factory BookDetail({
        @JsonKey(name: '_id') String? id,
        String? title,
        String? about,
        String? semester,
        List<String>? tags,
        String? writer,
        int? pages,
        int? bookEdition,
        int? price,
        String? mediaLink,
        String? imageLink,
        bool? isFavorited,
    }) = _BookDetail;

  factory BookDetail.fromJson(Map<String, dynamic> json) => _$BookDetailFromJson(json);
}
