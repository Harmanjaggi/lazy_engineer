// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountModalImpl _$$AccountModalImplFromJson(Map<String, dynamic> json) =>
    _$AccountModalImpl(
      token: json['token'] as String?,
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountModalImplToJson(_$AccountModalImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userDetail': instance.userDetail,
    };

_$UserDetailImpl _$$UserDetailImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailImpl(
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      company: json['company'] as String?,
      designation: json['designation'] as String?,
      github: json['github'] as String?,
      instagram: json['instagram'] as String?,
      linkedin: json['linkedin'] as String?,
      twitter: json['twitter'] as String?,
      university: json['university'] as String?,
      imageLink: json['imageLink'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      notesCount: json['notesCount'] as int?,
      jobsCount: json['jobsCount'] as int?,
      booksCount: json['booksCount'] as int?,
      papersCount: json['papersCount'] as int?,
      filesCount: json['filesCount'] as int?,
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'bio': instance.bio,
      'company': instance.company,
      'designation': instance.designation,
      'github': instance.github,
      'instagram': instance.instagram,
      'linkedin': instance.linkedin,
      'twitter': instance.twitter,
      'university': instance.university,
      'imageLink': instance.imageLink,
      'isAdmin': instance.isAdmin,
      'notesCount': instance.notesCount,
      'jobsCount': instance.jobsCount,
      'booksCount': instance.booksCount,
      'papersCount': instance.papersCount,
      'filesCount': instance.filesCount,
    };
