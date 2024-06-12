import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';

abstract class ProfileRepository {
  Future<UserDetail> updateProfile(UserDetail data);
}
