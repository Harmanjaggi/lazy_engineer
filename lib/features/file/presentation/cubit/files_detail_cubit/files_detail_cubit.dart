import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/features/favourites/data/repositories/favourites_repository_impl.dart';
import 'package:lazy_engineer/features/file/data/repositories/files_repository_impl.dart';

part 'files_detail_state.dart';
part 'files_detail_cubit.freezed.dart';

class FilesDetailCubit extends Cubit<FilesDetailState> {
  final String id;
  final String fileLink;
  bool isFavourite;
  FilesDetailCubit(this.id, this.fileLink, this.isFavourite)
      : super(FilesDetailState(isFavourite: isFavourite));
  final FilesRepositoryImpl fileRepository = FilesRepositoryImpl();
  final FavouritesRepositoryImpl favouritesRepository =
      FavouritesRepositoryImpl();

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await fileRepository.download(fileLink);
      emit(FilesDetailState(isDownloaded: true, isFavourite: isFavourite));
    } catch (e) {
      emit(FilesDetailState(isDownloaded: false, isFavourite: isFavourite));
    }
  }

  void like() async {
    if (isFavourite == true) {
      FavouriteBody body =
          FavouriteBody(id: id, update: false, type: 'practicleFile');
      FavouriteResponse? response =
          await favouritesRepository.removeFavourites(body);
      if (response != null && response.acknowledged == true) {
        isFavourite = false;
        emit(const FilesDetailState(isFavourite: false));
      }
    } else {
      FavouriteBody body =
          FavouriteBody(id: id, update: true, type: 'practicleFile');
      FavouritesModal? response =
          await favouritesRepository.addFavourites(body);
      if (response != null) {
        isFavourite = true;
        emit(const FilesDetailState(isFavourite: true));
      }
    }
  }
}
