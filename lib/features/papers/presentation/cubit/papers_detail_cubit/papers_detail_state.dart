part of 'papers_detail_cubit.dart';

@freezed
abstract class PapersDetailState with _$PapersDetailState {
  const factory PapersDetailState({
    required bool isFavourite,
    bool? isDownloaded,
  }) = PapersDetail;
}
