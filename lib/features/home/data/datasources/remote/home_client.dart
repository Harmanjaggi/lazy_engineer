import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';
import 'package:retrofit/http.dart';

part 'home_client.g.dart';

@RestApi()
abstract class HomeClient {
  factory HomeClient(Dio dio, {String baseUrl}) = _HomeClient;

  @POST(AppConfig.account)
  Future<BaseResponse<AccountModal>> getUser();
  @GET(AppConfig.notice)
  Future<BaseResponse<List<NoticeModel>>> getNotice();
}
