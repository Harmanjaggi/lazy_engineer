import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/home/data/repositories/home_repository_impl.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.loading()) {
    getUser();
  }

  final HomeRepositoryImpl _repository = HomeRepositoryImpl();

  Future<void> getUser() async {
    try {
      AccountModal user = await _repository.getUser();
      emit(UserState.success(user.userDetail ?? UserDetail()));
    } catch (e) {
      emit(UserState.failure(e));
    }
  }
}
