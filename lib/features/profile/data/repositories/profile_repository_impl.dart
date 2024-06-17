import 'package:lazy_engineer/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/profile/data/datasources/remote/profile_remote_datasource.dart';
import 'package:lazy_engineer/features/profile/data/models/upload_user_detail_modal/upload_user_detail_modal.dart';
import 'package:lazy_engineer/features/profile/domain/repositories/profile_repository.dart';
import 'package:lazy_engineer/navigation/dio/header.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final remoteDataSource = ProfileRemoteDatasource();
  final localDataSource = AuthLocalDataSource();

  @override
  Future<UserDetail> updateProfileWithImage(UploadUserDetail data) async {
    final response = await remoteDataSource.updateProfileWithImage(data);
    return response.data.userDetail!;
  }

  Future<UserDetail> updateProfile(UserDetail data) async {
    final response = await remoteDataSource.updateProfile(data);
    return response.data.userDetail!;
  }
}
