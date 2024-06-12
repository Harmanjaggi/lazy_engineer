import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';

abstract class HomeRepository {
  Future<AccountModal?> getUser();
  Future<List<NoticeModel>> getNotice();
  Future<List<LastSeenResponse>?> getLastSeen();
}
