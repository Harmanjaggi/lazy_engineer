import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/profile/data/repositories/profile_repository_impl.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final ProfileRepositoryImpl _repository;
  EditProfileCubit(this._repository) : super(const EditProfileState.initial());

  late AccountModal data;

  void editData(UserDetail data) async {
    const EditProfileState.loading();
    await _repository.updateProfile(data);
    try {
      emit(EditProfileState.success(data));
    } catch (e) {
      emit(EditProfileState.failure(e));
    }
  }
}
