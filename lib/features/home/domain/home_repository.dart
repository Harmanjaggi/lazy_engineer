import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';

import 'package:lazy_engineer/model/user.dart';

abstract class HomeRepository {
  Future<User?> getUser();
  Future<List<NoticeModel>> getNotice();
  Future<List<LastSeenResponse>?> getLastSeen();
}
