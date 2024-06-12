// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) {
  return _BookResponse.fromJson(json);
}

/// @nodoc
mixin _$BookResponse {
  List<BookDetail>? get result => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookResponseCopyWith<BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResponseCopyWith<$Res> {
  factory $BookResponseCopyWith(
          BookResponse value, $Res Function(BookResponse) then) =
      _$BookResponseCopyWithImpl<$Res, BookResponse>;
  @useResult
  $Res call({List<BookDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$BookResponseCopyWithImpl<$Res, $Val extends BookResponse>
    implements $BookResponseCopyWith<$Res> {
  _$BookResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<BookDetail>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookResponseImplCopyWith<$Res>
    implements $BookResponseCopyWith<$Res> {
  factory _$$BookResponseImplCopyWith(
          _$BookResponseImpl value, $Res Function(_$BookResponseImpl) then) =
      __$$BookResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$BookResponseImplCopyWithImpl<$Res>
    extends _$BookResponseCopyWithImpl<$Res, _$BookResponseImpl>
    implements _$$BookResponseImplCopyWith<$Res> {
  __$$BookResponseImplCopyWithImpl(
      _$BookResponseImpl _value, $Res Function(_$BookResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$BookResponseImpl(
      freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<BookDetail>?,
      freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookResponseImpl implements _BookResponse {
  const _$BookResponseImpl(
      final List<BookDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$BookResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookResponseImplFromJson(json);

  final List<BookDetail>? _result;
  @override
  List<BookDetail>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalCount;
  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'BookResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookResponseImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_result), totalCount, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookResponseImplCopyWith<_$BookResponseImpl> get copyWith =>
      __$$BookResponseImplCopyWithImpl<_$BookResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookResponseImplToJson(
      this,
    );
  }
}

abstract class _BookResponse implements BookResponse {
  const factory _BookResponse(
      final List<BookDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$BookResponseImpl;

  factory _BookResponse.fromJson(Map<String, dynamic> json) =
      _$BookResponseImpl.fromJson;

  @override
  List<BookDetail>? get result;
  @override
  int? get totalCount;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$BookResponseImplCopyWith<_$BookResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookDetail _$BookDetailFromJson(Map<String, dynamic> json) {
  return _BookDetail.fromJson(json);
}

/// @nodoc
mixin _$BookDetail {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get writer => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  int? get bookEdition => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get mediaLink => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  bool? get isFavorited => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailCopyWith<BookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailCopyWith<$Res> {
  factory $BookDetailCopyWith(
          BookDetail value, $Res Function(BookDetail) then) =
      _$BookDetailCopyWithImpl<$Res, BookDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? about,
      String? semester,
      List<String>? tags,
      String? writer,
      int? pages,
      int? bookEdition,
      int? price,
      String? mediaLink,
      String? imageLink,
      bool? isFavorited});
}

/// @nodoc
class _$BookDetailCopyWithImpl<$Res, $Val extends BookDetail>
    implements $BookDetailCopyWith<$Res> {
  _$BookDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? semester = freezed,
    Object? tags = freezed,
    Object? writer = freezed,
    Object? pages = freezed,
    Object? bookEdition = freezed,
    Object? price = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? isFavorited = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: freezed == bookEdition
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaLink: freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDetailImplCopyWith<$Res>
    implements $BookDetailCopyWith<$Res> {
  factory _$$BookDetailImplCopyWith(
          _$BookDetailImpl value, $Res Function(_$BookDetailImpl) then) =
      __$$BookDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? about,
      String? semester,
      List<String>? tags,
      String? writer,
      int? pages,
      int? bookEdition,
      int? price,
      String? mediaLink,
      String? imageLink,
      bool? isFavorited});
}

/// @nodoc
class __$$BookDetailImplCopyWithImpl<$Res>
    extends _$BookDetailCopyWithImpl<$Res, _$BookDetailImpl>
    implements _$$BookDetailImplCopyWith<$Res> {
  __$$BookDetailImplCopyWithImpl(
      _$BookDetailImpl _value, $Res Function(_$BookDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? semester = freezed,
    Object? tags = freezed,
    Object? writer = freezed,
    Object? pages = freezed,
    Object? bookEdition = freezed,
    Object? price = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? isFavorited = freezed,
  }) {
    return _then(_$BookDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      writer: freezed == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: freezed == bookEdition
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaLink: freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDetailImpl implements _BookDetail {
  const _$BookDetailImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.about,
      this.semester,
      final List<String>? tags,
      this.writer,
      this.pages,
      this.bookEdition,
      this.price,
      this.mediaLink,
      this.imageLink,
      this.isFavorited})
      : _tags = tags;

  factory _$BookDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDetailImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? about;
  @override
  final String? semester;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? writer;
  @override
  final int? pages;
  @override
  final int? bookEdition;
  @override
  final int? price;
  @override
  final String? mediaLink;
  @override
  final String? imageLink;
  @override
  final bool? isFavorited;

  @override
  String toString() {
    return 'BookDetail(id: $id, title: $title, about: $about, semester: $semester, tags: $tags, writer: $writer, pages: $pages, bookEdition: $bookEdition, price: $price, mediaLink: $mediaLink, imageLink: $imageLink, isFavorited: $isFavorited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.bookEdition, bookEdition) ||
                other.bookEdition == bookEdition) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      about,
      semester,
      const DeepCollectionEquality().hash(_tags),
      writer,
      pages,
      bookEdition,
      price,
      mediaLink,
      imageLink,
      isFavorited);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDetailImplCopyWith<_$BookDetailImpl> get copyWith =>
      __$$BookDetailImplCopyWithImpl<_$BookDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDetailImplToJson(
      this,
    );
  }
}

abstract class _BookDetail implements BookDetail {
  const factory _BookDetail(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? about,
      final String? semester,
      final List<String>? tags,
      final String? writer,
      final int? pages,
      final int? bookEdition,
      final int? price,
      final String? mediaLink,
      final String? imageLink,
      final bool? isFavorited}) = _$BookDetailImpl;

  factory _BookDetail.fromJson(Map<String, dynamic> json) =
      _$BookDetailImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get about;
  @override
  String? get semester;
  @override
  List<String>? get tags;
  @override
  String? get writer;
  @override
  int? get pages;
  @override
  int? get bookEdition;
  @override
  int? get price;
  @override
  String? get mediaLink;
  @override
  String? get imageLink;
  @override
  bool? get isFavorited;
  @override
  @JsonKey(ignore: true)
  _$$BookDetailImplCopyWith<_$BookDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
