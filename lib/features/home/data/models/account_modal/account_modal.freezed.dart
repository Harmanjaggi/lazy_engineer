// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountModal _$AccountModalFromJson(Map<String, dynamic> json) {
  return _AccountModal.fromJson(json);
}

/// @nodoc
mixin _$AccountModal {
  String? get token => throw _privateConstructorUsedError;
  UserDetail? get userDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModalCopyWith<AccountModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModalCopyWith<$Res> {
  factory $AccountModalCopyWith(
          AccountModal value, $Res Function(AccountModal) then) =
      _$AccountModalCopyWithImpl<$Res, AccountModal>;
  @useResult
  $Res call({String? token, UserDetail? userDetail});

  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class _$AccountModalCopyWithImpl<$Res, $Val extends AccountModal>
    implements $AccountModalCopyWith<$Res> {
  _$AccountModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<$Res>? get userDetail {
    if (_value.userDetail == null) {
      return null;
    }

    return $UserDetailCopyWith<$Res>(_value.userDetail!, (value) {
      return _then(_value.copyWith(userDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountModalImplCopyWith<$Res>
    implements $AccountModalCopyWith<$Res> {
  factory _$$AccountModalImplCopyWith(
          _$AccountModalImpl value, $Res Function(_$AccountModalImpl) then) =
      __$$AccountModalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, UserDetail? userDetail});

  @override
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class __$$AccountModalImplCopyWithImpl<$Res>
    extends _$AccountModalCopyWithImpl<$Res, _$AccountModalImpl>
    implements _$$AccountModalImplCopyWith<$Res> {
  __$$AccountModalImplCopyWithImpl(
      _$AccountModalImpl _value, $Res Function(_$AccountModalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_$AccountModalImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountModalImpl implements _AccountModal {
  const _$AccountModalImpl({this.token, this.userDetail});

  factory _$AccountModalImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountModalImplFromJson(json);

  @override
  final String? token;
  @override
  final UserDetail? userDetail;

  @override
  String toString() {
    return 'AccountModal(token: $token, userDetail: $userDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountModalImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, userDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountModalImplCopyWith<_$AccountModalImpl> get copyWith =>
      __$$AccountModalImplCopyWithImpl<_$AccountModalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountModalImplToJson(
      this,
    );
  }
}

abstract class _AccountModal implements AccountModal {
  const factory _AccountModal(
      {final String? token, final UserDetail? userDetail}) = _$AccountModalImpl;

  factory _AccountModal.fromJson(Map<String, dynamic> json) =
      _$AccountModalImpl.fromJson;

  @override
  String? get token;
  @override
  UserDetail? get userDetail;
  @override
  @JsonKey(ignore: true)
  _$$AccountModalImplCopyWith<_$AccountModalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
mixin _$UserDetail {
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get github => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get linkedin => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get university => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  int? get notesCount => throw _privateConstructorUsedError;
  int? get jobsCount => throw _privateConstructorUsedError;
  int? get booksCount => throw _privateConstructorUsedError;
  int? get papersCount => throw _privateConstructorUsedError;
  int? get filesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {String? id,
      String? fullName,
      String? email,
      String? bio,
      String? company,
      String? designation,
      String? github,
      String? instagram,
      String? linkedin,
      String? twitter,
      String? university,
      String? imageLink,
      bool? isAdmin,
      int? notesCount,
      int? jobsCount,
      int? booksCount,
      int? papersCount,
      int? filesCount});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? company = freezed,
    Object? designation = freezed,
    Object? github = freezed,
    Object? instagram = freezed,
    Object? linkedin = freezed,
    Object? twitter = freezed,
    Object? university = freezed,
    Object? imageLink = freezed,
    Object? isAdmin = freezed,
    Object? notesCount = freezed,
    Object? jobsCount = freezed,
    Object? booksCount = freezed,
    Object? papersCount = freezed,
    Object? filesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      github: freezed == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      notesCount: freezed == notesCount
          ? _value.notesCount
          : notesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      jobsCount: freezed == jobsCount
          ? _value.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      booksCount: freezed == booksCount
          ? _value.booksCount
          : booksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      papersCount: freezed == papersCount
          ? _value.papersCount
          : papersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      filesCount: freezed == filesCount
          ? _value.filesCount
          : filesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailImplCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$UserDetailImplCopyWith(
          _$UserDetailImpl value, $Res Function(_$UserDetailImpl) then) =
      __$$UserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? fullName,
      String? email,
      String? bio,
      String? company,
      String? designation,
      String? github,
      String? instagram,
      String? linkedin,
      String? twitter,
      String? university,
      String? imageLink,
      bool? isAdmin,
      int? notesCount,
      int? jobsCount,
      int? booksCount,
      int? papersCount,
      int? filesCount});
}

/// @nodoc
class __$$UserDetailImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$UserDetailImpl>
    implements _$$UserDetailImplCopyWith<$Res> {
  __$$UserDetailImplCopyWithImpl(
      _$UserDetailImpl _value, $Res Function(_$UserDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? company = freezed,
    Object? designation = freezed,
    Object? github = freezed,
    Object? instagram = freezed,
    Object? linkedin = freezed,
    Object? twitter = freezed,
    Object? university = freezed,
    Object? imageLink = freezed,
    Object? isAdmin = freezed,
    Object? notesCount = freezed,
    Object? jobsCount = freezed,
    Object? booksCount = freezed,
    Object? papersCount = freezed,
    Object? filesCount = freezed,
  }) {
    return _then(_$UserDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      github: freezed == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      notesCount: freezed == notesCount
          ? _value.notesCount
          : notesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      jobsCount: freezed == jobsCount
          ? _value.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      booksCount: freezed == booksCount
          ? _value.booksCount
          : booksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      papersCount: freezed == papersCount
          ? _value.papersCount
          : papersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      filesCount: freezed == filesCount
          ? _value.filesCount
          : filesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailImpl implements _UserDetail {
  const _$UserDetailImpl(
      {this.id,
      this.fullName,
      this.email,
      this.bio,
      this.company,
      this.designation,
      this.github,
      this.instagram,
      this.linkedin,
      this.twitter,
      this.university,
      this.imageLink,
      this.isAdmin,
      this.notesCount,
      this.jobsCount,
      this.booksCount,
      this.papersCount,
      this.filesCount});

  factory _$UserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailImplFromJson(json);

  @override
  final String? id;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? bio;
  @override
  final String? company;
  @override
  final String? designation;
  @override
  final String? github;
  @override
  final String? instagram;
  @override
  final String? linkedin;
  @override
  final String? twitter;
  @override
  final String? university;
  @override
  final String? imageLink;
  @override
  final bool? isAdmin;
  @override
  final int? notesCount;
  @override
  final int? jobsCount;
  @override
  final int? booksCount;
  @override
  final int? papersCount;
  @override
  final int? filesCount;

  @override
  String toString() {
    return 'UserDetail(id: $id, fullName: $fullName, email: $email, bio: $bio, company: $company, designation: $designation, github: $github, instagram: $instagram, linkedin: $linkedin, twitter: $twitter, university: $university, imageLink: $imageLink, isAdmin: $isAdmin, notesCount: $notesCount, jobsCount: $jobsCount, booksCount: $booksCount, papersCount: $papersCount, filesCount: $filesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.github, github) || other.github == github) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.notesCount, notesCount) ||
                other.notesCount == notesCount) &&
            (identical(other.jobsCount, jobsCount) ||
                other.jobsCount == jobsCount) &&
            (identical(other.booksCount, booksCount) ||
                other.booksCount == booksCount) &&
            (identical(other.papersCount, papersCount) ||
                other.papersCount == papersCount) &&
            (identical(other.filesCount, filesCount) ||
                other.filesCount == filesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      email,
      bio,
      company,
      designation,
      github,
      instagram,
      linkedin,
      twitter,
      university,
      imageLink,
      isAdmin,
      notesCount,
      jobsCount,
      booksCount,
      papersCount,
      filesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      __$$UserDetailImplCopyWithImpl<_$UserDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailImplToJson(
      this,
    );
  }
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {final String? id,
      final String? fullName,
      final String? email,
      final String? bio,
      final String? company,
      final String? designation,
      final String? github,
      final String? instagram,
      final String? linkedin,
      final String? twitter,
      final String? university,
      final String? imageLink,
      final bool? isAdmin,
      final int? notesCount,
      final int? jobsCount,
      final int? booksCount,
      final int? papersCount,
      final int? filesCount}) = _$UserDetailImpl;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$UserDetailImpl.fromJson;

  @override
  String? get id;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get bio;
  @override
  String? get company;
  @override
  String? get designation;
  @override
  String? get github;
  @override
  String? get instagram;
  @override
  String? get linkedin;
  @override
  String? get twitter;
  @override
  String? get university;
  @override
  String? get imageLink;
  @override
  bool? get isAdmin;
  @override
  int? get notesCount;
  @override
  int? get jobsCount;
  @override
  int? get booksCount;
  @override
  int? get papersCount;
  @override
  int? get filesCount;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
