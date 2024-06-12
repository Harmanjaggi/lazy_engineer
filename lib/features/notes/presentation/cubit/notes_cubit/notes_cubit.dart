import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';

part 'notes_state.dart';
part 'notes_cubit.freezed.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(const NotesState.loading()) {
    getNotes();
  }
  final NotesRepositoryImpl notesRepository = NotesRepositoryImpl();
  List<NoteDetail>? data;
  Future<void> getNotes() async {
    try {
      data = await notesRepository.getNotesData();
      if (data != null) {
        emit(NotesState.success(data!));
      } else {
        emit(const NotesState.failure('ERROR 404'));
      }
    } catch (e) {
      emit(NotesState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      //* textfeild
      emit(const NotesState.loading());
      if (filterRequest.textField == null) {
        emit(NotesState.success(data!));
        return;
      }
      final newData = await notesRepository.applyTextFeildFilter(
        filterRequest.textField!,
        data!,
      );
      emit(NotesState.success(newData ?? data!));
    } catch (e) {
      emit(NotesState.failure(e));
    }
  }
}
