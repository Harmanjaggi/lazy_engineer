import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';
import 'package:lazy_engineer/features/home/domain/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDatasource _remoteDataSource = HomeRemoteDatasource();
  @override
  Future<AccountModal> getUser() async {
   final data = await _remoteDataSource.getUser();
    return data.data;
  }

  @override
  Future<List<LastSeenResponse>?> getLastSeen() async {
    try {
      final List<LastSeenResponse> lastSeenData = lastSeenList;
      return lastSeenData;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<NoticeModel>> getNotice() async {
    try {
      final noticeList = await _remoteDataSource.getNotice();
      return noticeList.data;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error('error');
    }
  }
}
