import 'package:lazy_engineer/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/profile/data/datasources/remote/profile_remote_datasource.dart';
import 'package:lazy_engineer/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final remoteDataSource = ProfileRemoteDatasource();
  final localDataSource = AuthLocalDataSource();

  @override
  Future<UserDetail> updateProfile(UserDetail data) async {
    final AccountModal request = AccountModal(
      token: await localDataSource.getToken(),
      userDetail: data,
    );
    final response = await remoteDataSource.updateProfile(request);
    return response.data.userDetail!;
  }
}
