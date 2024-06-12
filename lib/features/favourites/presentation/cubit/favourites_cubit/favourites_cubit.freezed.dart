// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(FavouritesModal data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(FavouritesModal data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(FavouritesModal data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouritesLoading value) loading,
    required TResult Function(FavouritesFailure value) failure,
    required TResult Function(FavouritesSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouritesLoading value)? loading,
    TResult? Function(FavouritesFailure value)? failure,
    TResult? Function(FavouritesSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouritesLoading value)? loading,
    TResult Function(FavouritesFailure value)? failure,
    TResult Function(FavouritesSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavouritesLoadingImplCopyWith<$Res> {
  factory _$$FavouritesLoadingImplCopyWith(_$FavouritesLoadingImpl value,
          $Res Function(_$FavouritesLoadingImpl) then) =
      __$$FavouritesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavouritesLoadingImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavouritesLoadingImpl>
    implements _$$FavouritesLoadingImplCopyWith<$Res> {
  __$$FavouritesLoadingImplCopyWithImpl(_$FavouritesLoadingImpl _value,
      $Res Function(_$FavouritesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavouritesLoadingImpl implements FavouritesLoading {
  const _$FavouritesLoadingImpl();

  @override
  String toString() {
    return 'FavouritesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavouritesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(FavouritesModal data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(FavouritesModal data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(FavouritesModal data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouritesLoading value) loading,
    required TResult Function(FavouritesFailure value) failure,
    required TResult Function(FavouritesSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouritesLoading value)? loading,
    TResult? Function(FavouritesFailure value)? failure,
    TResult? Function(FavouritesSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouritesLoading value)? loading,
    TResult Function(FavouritesFailure value)? failure,
    TResult Function(FavouritesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavouritesLoading implements FavouritesState {
  const factory FavouritesLoading() = _$FavouritesLoadingImpl;
}

/// @nodoc
abstract class _$$FavouritesFailureImplCopyWith<$Res> {
  factory _$$FavouritesFailureImplCopyWith(_$FavouritesFailureImpl value,
          $Res Function(_$FavouritesFailureImpl) then) =
      __$$FavouritesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$FavouritesFailureImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavouritesFailureImpl>
    implements _$$FavouritesFailureImplCopyWith<$Res> {
  __$$FavouritesFailureImplCopyWithImpl(_$FavouritesFailureImpl _value,
      $Res Function(_$FavouritesFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$FavouritesFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FavouritesFailureImpl implements FavouritesFailure {
  const _$FavouritesFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'FavouritesState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesFailureImplCopyWith<_$FavouritesFailureImpl> get copyWith =>
      __$$FavouritesFailureImplCopyWithImpl<_$FavouritesFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(FavouritesModal data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(FavouritesModal data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(FavouritesModal data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouritesLoading value) loading,
    required TResult Function(FavouritesFailure value) failure,
    required TResult Function(FavouritesSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouritesLoading value)? loading,
    TResult? Function(FavouritesFailure value)? failure,
    TResult? Function(FavouritesSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouritesLoading value)? loading,
    TResult Function(FavouritesFailure value)? failure,
    TResult Function(FavouritesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FavouritesFailure implements FavouritesState {
  const factory FavouritesFailure(final dynamic e) = _$FavouritesFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$FavouritesFailureImplCopyWith<_$FavouritesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavouritesSuccessImplCopyWith<$Res> {
  factory _$$FavouritesSuccessImplCopyWith(_$FavouritesSuccessImpl value,
          $Res Function(_$FavouritesSuccessImpl) then) =
      __$$FavouritesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavouritesModal data});

  $FavouritesModalCopyWith<$Res> get data;
}

/// @nodoc
class __$$FavouritesSuccessImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavouritesSuccessImpl>
    implements _$$FavouritesSuccessImplCopyWith<$Res> {
  __$$FavouritesSuccessImplCopyWithImpl(_$FavouritesSuccessImpl _value,
      $Res Function(_$FavouritesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FavouritesSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FavouritesModal,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavouritesModalCopyWith<$Res> get data {
    return $FavouritesModalCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$FavouritesSuccessImpl implements FavouritesSuccess {
  const _$FavouritesSuccessImpl(this.data);

  @override
  final FavouritesModal data;

  @override
  String toString() {
    return 'FavouritesState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesSuccessImplCopyWith<_$FavouritesSuccessImpl> get copyWith =>
      __$$FavouritesSuccessImplCopyWithImpl<_$FavouritesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(FavouritesModal data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(FavouritesModal data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(FavouritesModal data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouritesLoading value) loading,
    required TResult Function(FavouritesFailure value) failure,
    required TResult Function(FavouritesSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouritesLoading value)? loading,
    TResult? Function(FavouritesFailure value)? failure,
    TResult? Function(FavouritesSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouritesLoading value)? loading,
    TResult Function(FavouritesFailure value)? failure,
    TResult Function(FavouritesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FavouritesSuccess implements FavouritesState {
  const factory FavouritesSuccess(final FavouritesModal data) =
      _$FavouritesSuccessImpl;

  FavouritesModal get data;
  @JsonKey(ignore: true)
  _$$FavouritesSuccessImplCopyWith<_$FavouritesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
