import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';
import 'package:lazy_engineer/features/notes/presentation/cubit/notes_detail_cubit/notes_detail_cubit.dart';

class NotesDetailHeader extends StatelessWidget {
  const NotesDetailHeader({
    super.key,
    required this.title,
    required this.userId,
    this.subject,
    required this.fileLink,
    this.imageLink,
  });
  final String title;
  final String userId;
  final String? subject;
  final String fileLink;
  final String? imageLink;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocProvider(
        create: (context) =>
            NotesDetailCubit(NotesRepositoryImpl(), userId, fileLink),
        child: BlocBuilder<NotesDetailCubit, NotesDetailState>(
          builder: (context, state) {
            final read = context.read<NotesDetailCubit>();
            final watch = context.watch<NotesDetailCubit>();
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(
                  networkImage: imageLink != '' ? imageLink : null,
                  placeHolder: AppImages.notesImage,
                  radius: kRoundedRectangleRadius,
                  width: 130,
                  height: 180,
                  isBorder: true,
                  color: Colors.grey.shade100,
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.headline5,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 16),
                      if (subject != null) ...[
                        Text(subject!, style: theme.textTheme.titleLarge),
                        const SizedBox(height: 16),
                      ],
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // IconButton(
                          //   onPressed: () => read.like(),
                          //   icon: watch.rating ?? false
                          //       ? const CustomIcon(
                          //           AppIcons.likeIcon,
                          //           height: 26,
                          //           width: 26,
                          //         )
                          //       : const CustomIcon(
                          //           AppIcons.closeIcon,
                          //           height: 26,
                          //           width: 26,
                          //         ),
                          // ),
                          // IconButton(
                          //   onPressed: () => read.dislike(),
                          //   icon: watch.rating ?? true
                          //       ? const CustomIcon(
                          //           AppIcons.closeIcon,
                          //           height: 26,
                          //           width: 26,
                          //         )
                          //       : const CustomIcon(
                          //           AppIcons.dislikeIcon,
                          //           height: 26,
                          //           width: 26,
                          //         ),
                          // ),
                          Column(
                            children: [
                              const CustomIcon(
                                AppIcons.bookIcon,
                                height: 22,
                                width: 22,
                              ),
                              Text(pdf, style: theme.textTheme.bodyText1)
                            ],
                          ),
                          Column(
                            children: [
                              const CustomIcon(
                                AppIcons.pageIcon,
                                height: 22,
                                width: 22,
                              ),
                              Text(pages, style: theme.textTheme.bodyText1)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: CustomButton(
                          text: download,
                          onPressed: () => read.download(fileLink),
                          width: 120,
                        ),
                      ),
                      if (context.watch<NotesDetailCubit>().isDownloaded !=
                          null)
                        Center(
                          child: Text(
                            watch.isDownloaded!
                                ? 'Note File is Downloaded'
                                : 'Notes File is not Downloaded',
                          ),
                        )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
