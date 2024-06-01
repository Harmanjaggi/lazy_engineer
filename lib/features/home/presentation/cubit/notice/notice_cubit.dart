import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';
import 'package:lazy_engineer/features/home/domain/home_repository.dart';

part 'notice_state.dart';
part 'notice_cubit.freezed.dart';

class NoticeCubit extends Cubit<NoticeState> {
  final HomeRepository _repository;
  NoticeCubit(this._repository) : super(const NoticeState.loading()) {
    getNotice();
  }
  void getNotice() async {
    try {
      final List<NoticeModel> data = await _repository.getNotice();
      emit(NoticeState.success(data));
    } catch (e) {
      emit(NoticeState.failure(e));
    }
  }
}
