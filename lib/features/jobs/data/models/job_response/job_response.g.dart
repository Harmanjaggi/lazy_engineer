// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobResponseImpl _$$JobResponseImplFromJson(Map<String, dynamic> json) =>
    _$JobResponseImpl(
      (json['result'] as List<dynamic>?)
          ?.map((e) => JobDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$JobResponseImplToJson(_$JobResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$JobDetailImpl _$$JobDetailImplFromJson(Map<String, dynamic> json) =>
    _$JobDetailImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      profile: json['profile'] as String?,
      company: json['company'] as String?,
      aboutCompany: json['aboutCompany'] as String?,
      location: json['location'] as String?,
      jobType: json['jobType'] as String?,
      experienceLevel: json['experienceLevel'] as String?,
      datePosted: json['datePosted'] as String?,
      skillsNeeded: (json['skillsNeeded'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      expectedSalary: json['expectedSalary'],
      applyLink: json['applyLink'] as String?,
      mediaLink: json['mediaLink'] as String?,
      imageLink: json['imageLink'] as String?,
      isFavorited: json['isFavorited'] as bool?,
    );

Map<String, dynamic> _$$JobDetailImplToJson(_$JobDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'profile': instance.profile,
      'company': instance.company,
      'aboutCompany': instance.aboutCompany,
      'location': instance.location,
      'jobType': instance.jobType,
      'experienceLevel': instance.experienceLevel,
      'datePosted': instance.datePosted,
      'skillsNeeded': instance.skillsNeeded,
      'expectedSalary': instance.expectedSalary,
      'applyLink': instance.applyLink,
      'mediaLink': instance.mediaLink,
      'imageLink': instance.imageLink,
      'isFavorited': instance.isFavorited,
    };
