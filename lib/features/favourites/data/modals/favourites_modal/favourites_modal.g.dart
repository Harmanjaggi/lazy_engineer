// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouritesModalImpl _$$FavouritesModalImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouritesModalImpl(
      practicleFile: (json['practicleFile'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : FileDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionPaper: (json['question_paper'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PaperDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      books: (json['books'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : BookDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      job: (json['job'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : JobDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : NoteDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FavouritesModalImplToJson(
        _$FavouritesModalImpl instance) =>
    <String, dynamic>{
      'practicleFile': instance.practicleFile,
      'question_paper': instance.questionPaper,
      'books': instance.books,
      'job': instance.job,
      'note': instance.note,
    };
