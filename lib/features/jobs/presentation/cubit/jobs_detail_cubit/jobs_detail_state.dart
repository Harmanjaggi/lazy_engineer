part of 'jobs_detail_cubit.dart';

@freezed
abstract class JobsDetailState with _$JobsDetailState {
  const factory JobsDetailState({
    required bool isFavourite,
  }) = _JobsDetailLoading;
}
