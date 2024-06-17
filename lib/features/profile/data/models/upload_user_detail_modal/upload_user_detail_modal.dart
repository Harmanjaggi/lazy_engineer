import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_user_detail_modal.freezed.dart';
part 'upload_user_detail_modal.g.dart';

@freezed
class UploadUserDetail with _$UploadUserDetail {
  const factory UploadUserDetail({
    dynamic image,
    @JsonKey(name: '_id') String? id,
    String? fullName,
    String? email,
    String? designation,
    String? company,
    String? university,
    String? bio,
    String? linkedin,
    String? github,
    String? instagram,
    String? twitter,
    String? imageLink,
  }) = _UploadUserDetail;

  factory UploadUserDetail.fromJson(Map<String, dynamic> json) =>
      _$UploadUserDetailFromJson(json);
}

extension UploadUserDetailFormData on UploadUserDetail {
  FormData toFormData() {
    return FormData.fromMap({
      '_id': id,
      'image': image,
      'company': company,
      'fullName': fullName,
      'email': email,
      'designation': designation,
      'university': university,
      'bio': bio,
      'linkedin': linkedin,
      'github': github,
      'instagram': instagram,
      'twitter': twitter,
      'imageLink': imageLink,
    });
  }
}
