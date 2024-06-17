import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/profile/data/datasources/remote/profile_client.dart';
import 'package:lazy_engineer/features/profile/data/models/upload_user_detail_modal/upload_user_detail_modal.dart';
import 'package:lazy_engineer/navigation/dio/header.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ProfileRemoteDatasource {
  final ProfileClient _client;

  factory ProfileRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.options.headers
        .addAll({HeaderKeys.tokenHeaderKey: HeaderValues.userToken});
    final ProfileClient client =
        ProfileClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return ProfileRemoteDatasource._(client);
  }

  ProfileRemoteDatasource._(this._client);
  Future<BaseResponse<AccountModal>> updateProfileWithImage(
      UploadUserDetail data) async {
    return await _client.updateProfileWithImage(data.toFormData());
  }

  Future<BaseResponse<AccountModal>> updateProfile(UserDetail data) async {
    return await _client.updateProfile(data.toJson());
  }
}
