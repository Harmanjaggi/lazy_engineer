import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_modal.freezed.dart';
part 'account_modal.g.dart';

@freezed
class AccountModal with _$AccountModal {
  const factory AccountModal({
    String? token,
    UserDetail? userDetail,
  }) = _AccountModal;

  factory AccountModal.fromJson(Map<String, dynamic> json) =>
      _$AccountModalFromJson(json);
}

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    @JsonKey(name: '_id') String? id,
    String? fullName,
    String? email,
    String? bio,
    String? company,
    String? designation,
    String? github,
    String? instagram,
    String? linkedin,
    String? twitter,
    String? university,
    String? imageLink,
    bool? isAdmin,
    int? notesCount,
    int? jobsCount,
    int? booksCount,
    int? papersCount,
    int? filesCount,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}
