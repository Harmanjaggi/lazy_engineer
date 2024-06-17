// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_user_detail_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadUserDetailImpl _$$UploadUserDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadUserDetailImpl(
      image: json['image'],
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      designation: json['designation'] as String?,
      company: json['company'] as String?,
      university: json['university'] as String?,
      bio: json['bio'] as String?,
      linkedin: json['linkedin'] as String?,
      github: json['github'] as String?,
      instagram: json['instagram'] as String?,
      twitter: json['twitter'] as String?,
      imageLink: json['imageLink'] as String?,
    );

Map<String, dynamic> _$$UploadUserDetailImplToJson(
        _$UploadUserDetailImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      '_id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'designation': instance.designation,
      'company': instance.company,
      'university': instance.university,
      'bio': instance.bio,
      'linkedin': instance.linkedin,
      'github': instance.github,
      'instagram': instance.instagram,
      'twitter': instance.twitter,
      'imageLink': instance.imageLink,
    };
