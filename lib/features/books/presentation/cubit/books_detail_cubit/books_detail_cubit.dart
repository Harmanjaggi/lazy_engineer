import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/books/data/repositories/books_repository_impl.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/features/favourites/data/repositories/favourites_repository_impl.dart';

part 'books_detail_state.dart';
part 'books_detail_cubit.freezed.dart';

class BooksDetailCubit extends Cubit<BooksDetailState> {
  final String id;
  final String fileLink;
  bool isFavourite;
  BooksDetailCubit(this.id, this.fileLink, this.isFavourite)
      : super(BooksDetailState(isFavourite: isFavourite));

  final BooksRepositoryImpl bookRepository = BooksRepositoryImpl();
  final FavouritesRepositoryImpl favouritesRepository = FavouritesRepositoryImpl();

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await bookRepository.download(fileLink);
      emit(BooksDetailState(isDownloaded: true, isFavourite: isFavourite));
    } catch (e) {
      emit(BooksDetailState(isDownloaded: false, isFavourite: isFavourite));
    }
  }

  void like() async {
    if (isFavourite == true) {
      FavouriteBody body = FavouriteBody(id: id, update: false, type: 'books');
      FavouriteResponse? response = await favouritesRepository.removeFavourites(body);
      if (response != null && response.acknowledged == true) {
        isFavourite = false;
        emit(const BooksDetailState(isFavourite: false));
      }
    } else {
      FavouriteBody body = FavouriteBody(id: id, update: true, type: 'books');
      FavouritesModal? response = await favouritesRepository.addFavourites(body);
      if (response != null) {
        isFavourite = true;
        emit(const BooksDetailState(isFavourite: true));
      }
    }
  }
}
