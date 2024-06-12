// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouriteResponse _$FavouriteResponseFromJson(Map<String, dynamic> json) {
  return _FavouriteResponse.fromJson(json);
}

/// @nodoc
mixin _$FavouriteResponse {
  bool? get acknowledged => throw _privateConstructorUsedError;
  int? get deletedCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteResponseCopyWith<FavouriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteResponseCopyWith<$Res> {
  factory $FavouriteResponseCopyWith(
          FavouriteResponse value, $Res Function(FavouriteResponse) then) =
      _$FavouriteResponseCopyWithImpl<$Res, FavouriteResponse>;
  @useResult
  $Res call({bool? acknowledged, int? deletedCount});
}

/// @nodoc
class _$FavouriteResponseCopyWithImpl<$Res, $Val extends FavouriteResponse>
    implements $FavouriteResponseCopyWith<$Res> {
  _$FavouriteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acknowledged = freezed,
    Object? deletedCount = freezed,
  }) {
    return _then(_value.copyWith(
      acknowledged: freezed == acknowledged
          ? _value.acknowledged
          : acknowledged // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedCount: freezed == deletedCount
          ? _value.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteResponseImplCopyWith<$Res>
    implements $FavouriteResponseCopyWith<$Res> {
  factory _$$FavouriteResponseImplCopyWith(_$FavouriteResponseImpl value,
          $Res Function(_$FavouriteResponseImpl) then) =
      __$$FavouriteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? acknowledged, int? deletedCount});
}

/// @nodoc
class __$$FavouriteResponseImplCopyWithImpl<$Res>
    extends _$FavouriteResponseCopyWithImpl<$Res, _$FavouriteResponseImpl>
    implements _$$FavouriteResponseImplCopyWith<$Res> {
  __$$FavouriteResponseImplCopyWithImpl(_$FavouriteResponseImpl _value,
      $Res Function(_$FavouriteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acknowledged = freezed,
    Object? deletedCount = freezed,
  }) {
    return _then(_$FavouriteResponseImpl(
      acknowledged: freezed == acknowledged
          ? _value.acknowledged
          : acknowledged // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedCount: freezed == deletedCount
          ? _value.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteResponseImpl implements _FavouriteResponse {
  const _$FavouriteResponseImpl({this.acknowledged, this.deletedCount});

  factory _$FavouriteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteResponseImplFromJson(json);

  @override
  final bool? acknowledged;
  @override
  final int? deletedCount;

  @override
  String toString() {
    return 'FavouriteResponse(acknowledged: $acknowledged, deletedCount: $deletedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteResponseImpl &&
            (identical(other.acknowledged, acknowledged) ||
                other.acknowledged == acknowledged) &&
            (identical(other.deletedCount, deletedCount) ||
                other.deletedCount == deletedCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, acknowledged, deletedCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteResponseImplCopyWith<_$FavouriteResponseImpl> get copyWith =>
      __$$FavouriteResponseImplCopyWithImpl<_$FavouriteResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteResponseImplToJson(
      this,
    );
  }
}

abstract class _FavouriteResponse implements FavouriteResponse {
  const factory _FavouriteResponse(
      {final bool? acknowledged,
      final int? deletedCount}) = _$FavouriteResponseImpl;

  factory _FavouriteResponse.fromJson(Map<String, dynamic> json) =
      _$FavouriteResponseImpl.fromJson;

  @override
  bool? get acknowledged;
  @override
  int? get deletedCount;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteResponseImplCopyWith<_$FavouriteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
