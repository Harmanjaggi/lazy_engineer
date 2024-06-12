import 'package:dio/dio.dart' hide Headers;
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:retrofit/http.dart';

part 'profile_client.g.dart';

@RestApi()
abstract class ProfileClient {
  factory ProfileClient(Dio dio, {String baseUrl}) = _ProfileClient;
  @POST(AppConfig.updateProfile)
  Future<BaseResponse<AccountModal>> updateProfile();
}
