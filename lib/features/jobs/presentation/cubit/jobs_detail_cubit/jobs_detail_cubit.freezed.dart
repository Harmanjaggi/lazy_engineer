// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobsDetailState {
  bool get isFavourite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobsDetailStateCopyWith<JobsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsDetailStateCopyWith<$Res> {
  factory $JobsDetailStateCopyWith(
          JobsDetailState value, $Res Function(JobsDetailState) then) =
      _$JobsDetailStateCopyWithImpl<$Res, JobsDetailState>;
  @useResult
  $Res call({bool isFavourite});
}

/// @nodoc
class _$JobsDetailStateCopyWithImpl<$Res, $Val extends JobsDetailState>
    implements $JobsDetailStateCopyWith<$Res> {
  _$JobsDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
  }) {
    return _then(_value.copyWith(
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobsDetailLoadingImplCopyWith<$Res>
    implements $JobsDetailStateCopyWith<$Res> {
  factory _$$JobsDetailLoadingImplCopyWith(_$JobsDetailLoadingImpl value,
          $Res Function(_$JobsDetailLoadingImpl) then) =
      __$$JobsDetailLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFavourite});
}

/// @nodoc
class __$$JobsDetailLoadingImplCopyWithImpl<$Res>
    extends _$JobsDetailStateCopyWithImpl<$Res, _$JobsDetailLoadingImpl>
    implements _$$JobsDetailLoadingImplCopyWith<$Res> {
  __$$JobsDetailLoadingImplCopyWithImpl(_$JobsDetailLoadingImpl _value,
      $Res Function(_$JobsDetailLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
  }) {
    return _then(_$JobsDetailLoadingImpl(
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$JobsDetailLoadingImpl implements _JobsDetailLoading {
  const _$JobsDetailLoadingImpl({required this.isFavourite});

  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'JobsDetailState(isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsDetailLoadingImpl &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsDetailLoadingImplCopyWith<_$JobsDetailLoadingImpl> get copyWith =>
      __$$JobsDetailLoadingImplCopyWithImpl<_$JobsDetailLoadingImpl>(
          this, _$identity);
}

abstract class _JobsDetailLoading implements JobsDetailState {
  const factory _JobsDetailLoading({required final bool isFavourite}) =
      _$JobsDetailLoadingImpl;

  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$JobsDetailLoadingImplCopyWith<_$JobsDetailLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
