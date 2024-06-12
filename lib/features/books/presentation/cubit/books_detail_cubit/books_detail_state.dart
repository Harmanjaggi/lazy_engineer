part of 'books_detail_cubit.dart';

@freezed
class BooksDetailState with _$BooksDetailState {
  const factory BooksDetailState({
    required bool isFavourite,
    bool? isDownloaded,
  }) = BooksDetail;
}
