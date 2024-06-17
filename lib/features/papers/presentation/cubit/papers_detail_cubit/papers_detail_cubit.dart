import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/features/favourites/data/repositories/favourites_repository_impl.dart';
import 'package:lazy_engineer/features/papers/data/repositories/papers_repository_impl.dart';

part 'papers_detail_cubit.freezed.dart';
part 'papers_detail_state.dart';

class PapersDetailCubit extends Cubit<PapersDetailState> {
  final String id;
  final String fileLink;
  bool isFavourite;
  PapersDetailCubit(this.id, this.fileLink, this.isFavourite)
      : super(PapersDetailState(isFavourite: isFavourite));

  final PapersRepositoryImpl paperRepository = PapersRepositoryImpl();
  final FavouritesRepositoryImpl favouritesRepository =
      FavouritesRepositoryImpl();

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await paperRepository.download(fileLink);
      emit(PapersDetailState(isDownloaded: true, isFavourite: isFavourite));
    } catch (e) {
      emit(PapersDetailState(isDownloaded: false, isFavourite: isFavourite));
    }
  }

  Future<void> getPapersDetail() async {
    // emit(PapersDetailState.success([], null));
    //   try {
    //     PaperDetailResponse? data = await _repository.getPapersDetailData(id);
    //     if (data != null) {
    //       emit(PapersDetailState.success(data));
    //     } else {
    //       emit(const PapersDetailState.loading());
    //     }
    //   } catch (e) {
    //     emit(PapersDetailState.failure(e));
    //   }
  }

  void like() async {
    if (isFavourite == true) {
      FavouriteBody body =
          FavouriteBody(id: id, update: false, type: 'question_paper');
      FavouriteResponse? response =
          await favouritesRepository.removeFavourites(body);
      if (response != null && response.acknowledged == true) {
        isFavourite = false;
        emit(const PapersDetailState(isFavourite: false));
      }
    } else {
      FavouriteBody body =
          FavouriteBody(id: id, update: true, type: 'question_paper');
      FavouritesModal? response =
          await favouritesRepository.addFavourites(body);
      if (response != null) {
        isFavourite = true;
        emit(const PapersDetailState(isFavourite: true));
      }
    }
  }
}
