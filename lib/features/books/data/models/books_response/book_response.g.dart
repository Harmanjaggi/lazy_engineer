// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookResponseImpl _$$BookResponseImplFromJson(Map<String, dynamic> json) =>
    _$BookResponseImpl(
      (json['result'] as List<dynamic>?)
          ?.map((e) => BookDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$BookResponseImplToJson(_$BookResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$BookDetailImpl _$$BookDetailImplFromJson(Map<String, dynamic> json) =>
    _$BookDetailImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      about: json['about'] as String?,
      semester: json['semester'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      writer: json['writer'] as String?,
      pages: json['pages'] as int?,
      bookEdition: json['bookEdition'] as int?,
      price: json['price'] as int?,
      mediaLink: json['mediaLink'] as String?,
      imageLink: json['imageLink'] as String?,
      isFavorited: json['isFavorited'] as bool?,
    );

Map<String, dynamic> _$$BookDetailImplToJson(_$BookDetailImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'tags': instance.tags,
      'writer': instance.writer,
      'pages': instance.pages,
      'bookEdition': instance.bookEdition,
      'price': instance.price,
      'mediaLink': instance.mediaLink,
      'imageLink': instance.imageLink,
      'isFavorited': instance.isFavorited,
    };
