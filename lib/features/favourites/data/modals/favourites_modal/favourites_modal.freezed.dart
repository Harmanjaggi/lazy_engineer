// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouritesModal _$FavouritesModalFromJson(Map<String, dynamic> json) {
  return _FavouritesModal.fromJson(json);
}

/// @nodoc
mixin _$FavouritesModal {
  List<FileDetail?>? get practicleFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_paper')
  List<PaperDetail?>? get questionPaper => throw _privateConstructorUsedError;
  List<BookDetail?>? get books => throw _privateConstructorUsedError;
  List<JobDetail?>? get job => throw _privateConstructorUsedError;
  List<NoteDetail?>? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouritesModalCopyWith<FavouritesModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesModalCopyWith<$Res> {
  factory $FavouritesModalCopyWith(
          FavouritesModal value, $Res Function(FavouritesModal) then) =
      _$FavouritesModalCopyWithImpl<$Res, FavouritesModal>;
  @useResult
  $Res call(
      {List<FileDetail?>? practicleFile,
      @JsonKey(name: 'question_paper') List<PaperDetail?>? questionPaper,
      List<BookDetail?>? books,
      List<JobDetail?>? job,
      List<NoteDetail?>? note});
}

/// @nodoc
class _$FavouritesModalCopyWithImpl<$Res, $Val extends FavouritesModal>
    implements $FavouritesModalCopyWith<$Res> {
  _$FavouritesModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practicleFile = freezed,
    Object? questionPaper = freezed,
    Object? books = freezed,
    Object? job = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      practicleFile: freezed == practicleFile
          ? _value.practicleFile
          : practicleFile // ignore: cast_nullable_to_non_nullable
              as List<FileDetail?>?,
      questionPaper: freezed == questionPaper
          ? _value.questionPaper
          : questionPaper // ignore: cast_nullable_to_non_nullable
              as List<PaperDetail?>?,
      books: freezed == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDetail?>?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as List<JobDetail?>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<NoteDetail?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesModalImplCopyWith<$Res>
    implements $FavouritesModalCopyWith<$Res> {
  factory _$$FavouritesModalImplCopyWith(_$FavouritesModalImpl value,
          $Res Function(_$FavouritesModalImpl) then) =
      __$$FavouritesModalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FileDetail?>? practicleFile,
      @JsonKey(name: 'question_paper') List<PaperDetail?>? questionPaper,
      List<BookDetail?>? books,
      List<JobDetail?>? job,
      List<NoteDetail?>? note});
}

/// @nodoc
class __$$FavouritesModalImplCopyWithImpl<$Res>
    extends _$FavouritesModalCopyWithImpl<$Res, _$FavouritesModalImpl>
    implements _$$FavouritesModalImplCopyWith<$Res> {
  __$$FavouritesModalImplCopyWithImpl(
      _$FavouritesModalImpl _value, $Res Function(_$FavouritesModalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practicleFile = freezed,
    Object? questionPaper = freezed,
    Object? books = freezed,
    Object? job = freezed,
    Object? note = freezed,
  }) {
    return _then(_$FavouritesModalImpl(
      practicleFile: freezed == practicleFile
          ? _value._practicleFile
          : practicleFile // ignore: cast_nullable_to_non_nullable
              as List<FileDetail?>?,
      questionPaper: freezed == questionPaper
          ? _value._questionPaper
          : questionPaper // ignore: cast_nullable_to_non_nullable
              as List<PaperDetail?>?,
      books: freezed == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDetail?>?,
      job: freezed == job
          ? _value._job
          : job // ignore: cast_nullable_to_non_nullable
              as List<JobDetail?>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<NoteDetail?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouritesModalImpl implements _FavouritesModal {
  const _$FavouritesModalImpl(
      {final List<FileDetail?>? practicleFile,
      @JsonKey(name: 'question_paper') final List<PaperDetail?>? questionPaper,
      final List<BookDetail?>? books,
      final List<JobDetail?>? job,
      final List<NoteDetail?>? note})
      : _practicleFile = practicleFile,
        _questionPaper = questionPaper,
        _books = books,
        _job = job,
        _note = note;

  factory _$FavouritesModalImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouritesModalImplFromJson(json);

  final List<FileDetail?>? _practicleFile;
  @override
  List<FileDetail?>? get practicleFile {
    final value = _practicleFile;
    if (value == null) return null;
    if (_practicleFile is EqualUnmodifiableListView) return _practicleFile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaperDetail?>? _questionPaper;
  @override
  @JsonKey(name: 'question_paper')
  List<PaperDetail?>? get questionPaper {
    final value = _questionPaper;
    if (value == null) return null;
    if (_questionPaper is EqualUnmodifiableListView) return _questionPaper;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BookDetail?>? _books;
  @override
  List<BookDetail?>? get books {
    final value = _books;
    if (value == null) return null;
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<JobDetail?>? _job;
  @override
  List<JobDetail?>? get job {
    final value = _job;
    if (value == null) return null;
    if (_job is EqualUnmodifiableListView) return _job;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NoteDetail?>? _note;
  @override
  List<NoteDetail?>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavouritesModal(practicleFile: $practicleFile, questionPaper: $questionPaper, books: $books, job: $job, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesModalImpl &&
            const DeepCollectionEquality()
                .equals(other._practicleFile, _practicleFile) &&
            const DeepCollectionEquality()
                .equals(other._questionPaper, _questionPaper) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality().equals(other._job, _job) &&
            const DeepCollectionEquality().equals(other._note, _note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_practicleFile),
      const DeepCollectionEquality().hash(_questionPaper),
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_job),
      const DeepCollectionEquality().hash(_note));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesModalImplCopyWith<_$FavouritesModalImpl> get copyWith =>
      __$$FavouritesModalImplCopyWithImpl<_$FavouritesModalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouritesModalImplToJson(
      this,
    );
  }
}

abstract class _FavouritesModal implements FavouritesModal {
  const factory _FavouritesModal(
      {final List<FileDetail?>? practicleFile,
      @JsonKey(name: 'question_paper') final List<PaperDetail?>? questionPaper,
      final List<BookDetail?>? books,
      final List<JobDetail?>? job,
      final List<NoteDetail?>? note}) = _$FavouritesModalImpl;

  factory _FavouritesModal.fromJson(Map<String, dynamic> json) =
      _$FavouritesModalImpl.fromJson;

  @override
  List<FileDetail?>? get practicleFile;
  @override
  @JsonKey(name: 'question_paper')
  List<PaperDetail?>? get questionPaper;
  @override
  List<BookDetail?>? get books;
  @override
  List<JobDetail?>? get job;
  @override
  List<NoteDetail?>? get note;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesModalImplCopyWith<_$FavouritesModalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
