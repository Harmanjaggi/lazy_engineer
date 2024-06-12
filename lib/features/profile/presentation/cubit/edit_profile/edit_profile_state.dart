part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = EditProfileInitial;
  const factory EditProfileState.success(UserDetail data) = EditProfileSuccess;
  const factory EditProfileState.loading() = EditProfileLoading;
  const factory EditProfileState.failure(dynamic e) = EditProfileFailure;
}
