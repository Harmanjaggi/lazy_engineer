import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_body.dart/favourite_body.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourite_response/favourite_response.dart';
import 'package:lazy_engineer/features/favourites/data/modals/favourites_modal/favourites_modal.dart';
import 'package:lazy_engineer/features/favourites/data/repositories/favourites_repository_impl.dart';
import 'package:lazy_engineer/features/jobs/data/repositories/jobs_repository_impl.dart';
import 'package:url_launcher/url_launcher.dart';

part 'jobs_detail_state.dart';
part 'jobs_detail_cubit.freezed.dart';

class JobsDetailCubit extends Cubit<JobsDetailState> {
  final String id;
  bool isFavourite;
  JobsDetailCubit(this.id, this.isFavourite)
      : super(JobsDetailState(isFavourite: isFavourite));

  final JobsRepositoryImpl bookRepository = JobsRepositoryImpl();
  final FavouritesRepositoryImpl favouritesRepository =
      FavouritesRepositoryImpl();

  bool? isDownloaded;
  bool? rating;
  Future<void> apply(String fileLink) async {
    if (!await launchUrl(Uri.parse(fileLink))) {
      throw Exception('Could not launch $fileLink');
    }
  }

  void like() async {
    if (isFavourite == true) {
      FavouriteBody body = FavouriteBody(id: id, update: false, type: 'job');
      FavouriteResponse? response =
          await favouritesRepository.removeFavourites(body);
      if (response != null && response.acknowledged == true) {
        isFavourite = false;
        emit(const JobsDetailState(isFavourite: false));
      }
    } else {
      FavouriteBody body = FavouriteBody(id: id, update: true, type: 'job');
      FavouritesModal? response =
          await favouritesRepository.addFavourites(body);
      if (response != null) {
        isFavourite = true;
        emit(const JobsDetailState(isFavourite: true));
      }
    }
  }
}
