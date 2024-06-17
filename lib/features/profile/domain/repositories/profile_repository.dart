import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/profile/data/models/upload_user_detail_modal/upload_user_detail_modal.dart';

abstract class ProfileRepository {
  Future<UserDetail> updateProfileWithImage(UploadUserDetail data);
  Future<UserDetail> updateProfile(UserDetail data);
}
