// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BooksDetailState {
  bool get isFavourite => throw _privateConstructorUsedError;
  bool? get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksDetailStateCopyWith<BooksDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksDetailStateCopyWith<$Res> {
  factory $BooksDetailStateCopyWith(
          BooksDetailState value, $Res Function(BooksDetailState) then) =
      _$BooksDetailStateCopyWithImpl<$Res, BooksDetailState>;
  @useResult
  $Res call({bool isFavourite, bool? isDownloaded});
}

/// @nodoc
class _$BooksDetailStateCopyWithImpl<$Res, $Val extends BooksDetailState>
    implements $BooksDetailStateCopyWith<$Res> {
  _$BooksDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
    Object? isDownloaded = freezed,
  }) {
    return _then(_value.copyWith(
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloaded: freezed == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooksDetailImplCopyWith<$Res>
    implements $BooksDetailStateCopyWith<$Res> {
  factory _$$BooksDetailImplCopyWith(
          _$BooksDetailImpl value, $Res Function(_$BooksDetailImpl) then) =
      __$$BooksDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFavourite, bool? isDownloaded});
}

/// @nodoc
class __$$BooksDetailImplCopyWithImpl<$Res>
    extends _$BooksDetailStateCopyWithImpl<$Res, _$BooksDetailImpl>
    implements _$$BooksDetailImplCopyWith<$Res> {
  __$$BooksDetailImplCopyWithImpl(
      _$BooksDetailImpl _value, $Res Function(_$BooksDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$BooksDetailImpl(
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloaded: freezed == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BooksDetailImpl implements BooksDetail {
  const _$BooksDetailImpl({required this.isFavourite, this.isDownloaded});

  @override
  final bool isFavourite;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'BooksDetailState(isFavourite: $isFavourite, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksDetailImpl &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.isDownloaded, isDownloaded) ||
                other.isDownloaded == isDownloaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavourite, isDownloaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksDetailImplCopyWith<_$BooksDetailImpl> get copyWith =>
      __$$BooksDetailImplCopyWithImpl<_$BooksDetailImpl>(this, _$identity);
}

abstract class BooksDetail implements BooksDetailState {
  const factory BooksDetail(
      {required final bool isFavourite,
      final bool? isDownloaded}) = _$BooksDetailImpl;

  @override
  bool get isFavourite;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$BooksDetailImplCopyWith<_$BooksDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
