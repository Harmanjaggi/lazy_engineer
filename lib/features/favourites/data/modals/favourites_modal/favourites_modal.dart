import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';

part 'favourites_modal.freezed.dart';
part 'favourites_modal.g.dart';

@freezed
class FavouritesModal with _$FavouritesModal {
  const factory FavouritesModal({
    List<FileDetail?>? practicleFile,
    @JsonKey(name: 'question_paper') List<PaperDetail?>? questionPaper,
    List<BookDetail?>? books,
    List<JobDetail?>? job,
    List<NoteDetail?>? note,
  }) = _FavouritesModal;

  factory FavouritesModal.fromJson(Map<String, dynamic> json) =>
      _$FavouritesModalFromJson(json);
}
