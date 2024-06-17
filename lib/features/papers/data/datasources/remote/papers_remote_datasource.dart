import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/datasources/remote/papers_client.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/navigation/dio/header.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class PapersRemoteDatasource {
  final PapersClient _client;

  factory PapersRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, _) async {
          //   if (error.response?.statusCode == 403 ||
          //       error.response?.statusCode == 401) {
          //     await refreshToken();
          //   }
        },
      ),
    );
    dio.options.headers.addAll(
      {HeaderKeys.tokenHeaderKey: HeaderValues.userToken},
    );
    dio.options.connectTimeout = AppConfig.connectTimeout;
    dio.options.receiveTimeout = AppConfig.receiveTimeout;
    final PapersClient client = PapersClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return PapersRemoteDatasource._(client);
  }

  PapersRemoteDatasource._(this._client);
  Future<BaseResponse<PaperResponse>> getPapers() async {
    final BaseResponse<PaperResponse> response = await _client.getPapers();
    return response;
  }

  Future<BaseResponse<PaperResponse>> searchPapers(String query) async {
    final BaseResponse<PaperResponse> response =
        await _client.searchPapers(query);
    return response;
  }

  Future<BaseResponse<PaperResponse>> applyFilter(
    FilterRequest filterRequest,
  ) async {
    final BaseResponse<PaperResponse> response =
        await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<PaperDetailResponse>> getPapersDetail(String id) async {
    final BaseResponse<PaperDetailResponse> response =
        await _client.getPapersDetail(id);
    return response;
  }

  Future<void> refreshToken() async {
    // final refreshToken = await _storage.read(key: 'refreshToken');
    // final response = await api
    //     .post('/auth/refresh', data: {'refreshToken': refreshToken});

    // if (response.statusCode == 201) {
    //   // successfully got the new access token
    //   accessToken = response.data;
    // } else {
    //   // refresh token is wrong so log out user.
    //   accessToken = null;
    //   _storage.deleteAll();
    // }
  }
}
