part of 'files_detail_cubit.dart';

@freezed
abstract class FilesDetailState with _$FilesDetailState {
  const factory FilesDetailState({
    required bool isFavourite,
    bool? isDownloaded,
  }) = FilesDetail;
}
