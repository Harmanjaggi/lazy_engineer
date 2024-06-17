import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/features/favourites/data/repositories/favourites_repository_impl.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';

part 'notes_detail_state.dart';
part 'notes_detail_cubit.freezed.dart';

class NotesDetailCubit extends Cubit<NotesDetailState> {
  bool isFavourite;
  final String id;
  final String fileLink;
  NotesDetailCubit(
    this.id,
    this.fileLink,
    this.isFavourite,
  ) : super(NotesDetailState(isFavourite: isFavourite));
  final NotesRepositoryImpl notesRepository = NotesRepositoryImpl();
  final FavouritesRepositoryImpl favouritesRepository =
      FavouritesRepositoryImpl();

  bool? isDownloaded;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await notesRepository.download(fileLink);
      emit(NotesDetailState(isDownloaded: true, isFavourite: isFavourite));
    } catch (e) {
      emit(NotesDetailState(isDownloaded: false, isFavourite: isFavourite));
    }
  }

  void like() async {
    if (isFavourite == true) {
      FavouriteBody body = FavouriteBody(id: id, update: false, type: 'note');
      FavouriteResponse? response =
          await favouritesRepository.removeFavourites(body);
      if (response != null && response.acknowledged == true) {
        isFavourite = false;
        emit(const NotesDetailState(isFavourite: false));
      }
    } else {
      FavouriteBody body = FavouriteBody(id: id, update: true, type: 'note');
      FavouritesModal? response =
          await favouritesRepository.addFavourites(body);
      if (response != null) {
        isFavourite = true;
        emit(const NotesDetailState(isFavourite: true));
      }
    }
  }
}
