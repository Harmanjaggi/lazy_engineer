import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/features/books/presentation/widgets/book_data_box.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/grid_card.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/features/favourites/data/repositories/favourites_repository_impl.dart';
import 'package:lazy_engineer/features/favourites/presentation/cubit/favourites_cubit/favourites_cubit.dart';
import 'package:lazy_engineer/features/file/presentation/widgets/file_data_box.dart';
import 'package:lazy_engineer/features/jobs/presentation/widgets/job_list.dart';
import 'package:lazy_engineer/features/papers/presentation/widgets/question_paper_data_box.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          favourites,
          style: theme.textTheme.headlineMedium,
        ),
      ),
      body: BlocProvider(
        create: (context) => FavouritesCubit(FavouritesRepositoryImpl()),
        child: BlocBuilder<FavouritesCubit, FavouritesState>(
          builder: (context, state) {
            return state.when(
              loading: () => const LoadingScreen(),
              failure: (e) => FailureScreen(e),
              success: (data) {
                if ((data.note?.length ?? 0) == 0) {
                  return Center(
                    child: Text(
                      "You have No Favourites yet",
                      style: theme.textTheme.titleMedium
                          ?.copyWith(color: theme.disabledColor),
                    ),
                  );
                } else {
                  return ListView(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 60),
                    children: [
                      if (data.note != null && data.note!.isNotEmpty) ...[
                        Text("Notes", style: theme.textTheme.titleLarge),
                        SizedBox(
                          height: 266,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: data.note?.length ?? 0,
                            padding: EdgeInsets.only(bottom: 16),
                            itemBuilder: (context, index) {
                              if (data.note?[index] != null) {
                                return GestureDetector(
                                  onTap: () {
                                    context.push(
                                      '${RouteGenerator.notesDescriptionRoute}/${index + 1}',
                                      extra: data.note![index],
                                    );
                                  },
                                  child: SizedBox(
                                    width: 200,
                                    child: GridCard(
                                      body: data.note?[index]?.about ?? '',
                                      title: data.note?[index]?.title ?? '',
                                      placeHolder: AppImages.notesImage,
                                      networkImage: workingLink(
                                          data.note?[index]?.imageLink),
                                      fixedHeight: true,
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 16),
                          ),
                        ),
                      ],
                      if (data.books != null && data.books!.isNotEmpty) ...[
                        Text("Books", style: theme.textTheme.titleLarge),
                        SizedBox(
                          height: 216,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: data.books?.length ?? 0,
                            padding: EdgeInsets.only(bottom: 16),
                            itemBuilder: (context, index) {
                              if (data.books?[index] != null) {
                                return SizedBox(
                                  width: 350,
                                  child: TileView(
                                    placeholder: AppImages.booksImage,
                                    image: workingLink(
                                        data.books?[index]?.imageLink),
                                    pages: data.books?[index]?.pages,
                                    child: BookDataBox(
                                      writers: data.books?[index]?.writer ?? '',
                                      bookName: data.books?[index]?.title ?? '',
                                      description:
                                          data.books?[index]?.about ?? '',
                                    ),
                                    onPressed: () => context.push(
                                      '${RouteGenerator.bookDescriptionRoute}/${index + 1}',
                                      extra: data.books?[index],
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 16),
                          ),
                        ),
                      ],
                      if (data.questionPaper != null &&
                          data.questionPaper!.isNotEmpty) ...[
                        Text("Question Paper",
                            style: theme.textTheme.titleLarge),
                        SizedBox(
                          height: 216,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: data.questionPaper?.length ?? 0,
                            padding: EdgeInsets.only(bottom: 16),
                            itemBuilder: (context, index) {
                              if (data.questionPaper?[index] != null) {
                                return SizedBox(
                                  width: 350,
                                  child: TileView(
                                    placeholder: AppImages.questionPaperImage,
                                    image: workingLink(
                                        data.questionPaper?[index]?.imageLink),
                                    onPressed: () => context.push(
                                      '${RouteGenerator.questionPaperDescriptionRoute}/${index + 1}',
                                      extra: data.questionPaper?[index],
                                    ),
                                    child: QuestionPaperDataBox(
                                        data.questionPaper![index]!),
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 16),
                          ),
                        ),
                      ],
                      if (data.practicleFile != null &&
                          data.practicleFile!.isNotEmpty) ...[
                        Text("Practical File",
                            style: theme.textTheme.titleLarge),
                        SizedBox(
                          height: 216,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: data.practicleFile!.length,
                            padding: EdgeInsets.only(bottom: 16),
                            itemBuilder: (context, index) {
                              if (data.practicleFile?[index] != null) {
                                return SizedBox(
                                  width: 350,
                                  child: TileView(
                                    placeholder: AppImages.practicleFileImage,
                                    image: workingLink(
                                        data.practicleFile![index]!.imageLink),
                                    child: FileDataBox(
                                      title:
                                          data.practicleFile![index]!.title ??
                                              '',
                                      collegeValue:
                                          data.practicleFile![index]!.college ??
                                              '',
                                      subjectValue:
                                          data.practicleFile![index]!.subject ??
                                              '',
                                      semesterValue: data.practicleFile![index]!
                                              .semester ??
                                          '',
                                    ),
                                    onPressed: () => context.push(
                                      '${RouteGenerator.fileDescriptionRoute}/${index + 1}',
                                      extra: data.practicleFile![index],
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 16),
                          ),
                        ),
                      ],
                      if (data.job != null && data.job!.isNotEmpty) ...[
                        Text("Job", style: theme.textTheme.titleLarge),
                        SizedBox(
                          height: 156,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: data.job!.length,
                            padding: EdgeInsets.only(bottom: 16),
                            itemBuilder: (context, index) {
                              final jobData = data.job![index];
                              if (jobData != null) {
                                return SizedBox(
                                  width: 350,
                                  child: TileView(
                                    placeholder: AppImages.jobsImage,
                                    image: workingLink(
                                        data.job![index]!.mediaLink),
                                    fit: BoxFit.contain,
                                    width: 70,
                                    child: JobDataBox(
                                      jobTitle: jobData.title ?? '',
                                      location: jobData.location ?? '',
                                      companyName: jobData.company ?? '',
                                      date: jobData.datePosted ?? '',
                                    ),
                                    onPressed: () => context.push(
                                      '${RouteGenerator.jobsDescriptionRoute}/${index + 1}',
                                      extra: data.job![index],
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 16),
                          ),
                        ),
                      ],
                    ],
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
