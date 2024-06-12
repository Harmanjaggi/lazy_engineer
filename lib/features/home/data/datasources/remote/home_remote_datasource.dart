import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/home/data/datasources/remote/home_client.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';
import 'package:lazy_engineer/navigation/dio/header.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HomeRemoteDatasource {
  final HomeClient _client;

  factory HomeRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.options.headers.addAll({HeaderKeys.tokenHeaderKey: HeaderValues.userToken});
    final HomeClient client = HomeClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return HomeRemoteDatasource._(client);
  }

  HomeRemoteDatasource._(this._client);
  Future<BaseResponse<AccountModal>> getUser() async {
    final BaseResponse<AccountModal> response = await _client.getUser();
    return response;
  }
  Future<BaseResponse<List<NoticeModel>>> getNotice() async {
    final BaseResponse<List<NoticeModel>> response = await _client.getNotice();
    return response;
  }
}
