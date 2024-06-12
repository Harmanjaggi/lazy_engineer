// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouriteBody _$FavouriteBodyFromJson(Map<String, dynamic> json) {
  return _FavouriteBody.fromJson(json);
}

/// @nodoc
mixin _$FavouriteBody {
  String get id => throw _privateConstructorUsedError;
  bool get update => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteBodyCopyWith<FavouriteBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteBodyCopyWith<$Res> {
  factory $FavouriteBodyCopyWith(
          FavouriteBody value, $Res Function(FavouriteBody) then) =
      _$FavouriteBodyCopyWithImpl<$Res, FavouriteBody>;
  @useResult
  $Res call({String id, bool update, String type});
}

/// @nodoc
class _$FavouriteBodyCopyWithImpl<$Res, $Val extends FavouriteBody>
    implements $FavouriteBodyCopyWith<$Res> {
  _$FavouriteBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? update = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteBodyImplCopyWith<$Res>
    implements $FavouriteBodyCopyWith<$Res> {
  factory _$$FavouriteBodyImplCopyWith(
          _$FavouriteBodyImpl value, $Res Function(_$FavouriteBodyImpl) then) =
      __$$FavouriteBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool update, String type});
}

/// @nodoc
class __$$FavouriteBodyImplCopyWithImpl<$Res>
    extends _$FavouriteBodyCopyWithImpl<$Res, _$FavouriteBodyImpl>
    implements _$$FavouriteBodyImplCopyWith<$Res> {
  __$$FavouriteBodyImplCopyWithImpl(
      _$FavouriteBodyImpl _value, $Res Function(_$FavouriteBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? update = null,
    Object? type = null,
  }) {
    return _then(_$FavouriteBodyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteBodyImpl implements _FavouriteBody {
  const _$FavouriteBodyImpl(
      {required this.id, required this.update, required this.type});

  factory _$FavouriteBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteBodyImplFromJson(json);

  @override
  final String id;
  @override
  final bool update;
  @override
  final String type;

  @override
  String toString() {
    return 'FavouriteBody(id: $id, update: $update, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteBodyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.update, update) || other.update == update) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, update, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteBodyImplCopyWith<_$FavouriteBodyImpl> get copyWith =>
      __$$FavouriteBodyImplCopyWithImpl<_$FavouriteBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteBodyImplToJson(
      this,
    );
  }
}

abstract class _FavouriteBody implements FavouriteBody {
  const factory _FavouriteBody(
      {required final String id,
      required final bool update,
      required final String type}) = _$FavouriteBodyImpl;

  factory _FavouriteBody.fromJson(Map<String, dynamic> json) =
      _$FavouriteBodyImpl.fromJson;

  @override
  String get id;
  @override
  bool get update;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteBodyImplCopyWith<_$FavouriteBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
