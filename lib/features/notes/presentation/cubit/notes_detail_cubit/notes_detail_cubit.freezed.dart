// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesDetailState {
  bool get isFavourite => throw _privateConstructorUsedError;
  bool? get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesDetailStateCopyWith<NotesDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesDetailStateCopyWith<$Res> {
  factory $NotesDetailStateCopyWith(
          NotesDetailState value, $Res Function(NotesDetailState) then) =
      _$NotesDetailStateCopyWithImpl<$Res, NotesDetailState>;
  @useResult
  $Res call({bool isFavourite, bool? isDownloaded});
}

/// @nodoc
class _$NotesDetailStateCopyWithImpl<$Res, $Val extends NotesDetailState>
    implements $NotesDetailStateCopyWith<$Res> {
  _$NotesDetailStateCopyWithImpl(this._value, this._then);

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
abstract class _$$NotesDetailImplCopyWith<$Res>
    implements $NotesDetailStateCopyWith<$Res> {
  factory _$$NotesDetailImplCopyWith(
          _$NotesDetailImpl value, $Res Function(_$NotesDetailImpl) then) =
      __$$NotesDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFavourite, bool? isDownloaded});
}

/// @nodoc
class __$$NotesDetailImplCopyWithImpl<$Res>
    extends _$NotesDetailStateCopyWithImpl<$Res, _$NotesDetailImpl>
    implements _$$NotesDetailImplCopyWith<$Res> {
  __$$NotesDetailImplCopyWithImpl(
      _$NotesDetailImpl _value, $Res Function(_$NotesDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$NotesDetailImpl(
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

class _$NotesDetailImpl implements NotesDetail {
  const _$NotesDetailImpl({required this.isFavourite, this.isDownloaded});

  @override
  final bool isFavourite;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'NotesDetailState(isFavourite: $isFavourite, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesDetailImpl &&
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
  _$$NotesDetailImplCopyWith<_$NotesDetailImpl> get copyWith =>
      __$$NotesDetailImplCopyWithImpl<_$NotesDetailImpl>(this, _$identity);
}

abstract class NotesDetail implements NotesDetailState {
  const factory NotesDetail(
      {required final bool isFavourite,
      final bool? isDownloaded}) = _$NotesDetailImpl;

  @override
  bool get isFavourite;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$NotesDetailImplCopyWith<_$NotesDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
