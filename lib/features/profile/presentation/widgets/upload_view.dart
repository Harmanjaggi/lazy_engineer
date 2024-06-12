import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';

class UploadView extends StatelessWidget {
  const UploadView(this.data, {super.key});
  final UserDetail data;
  @override
  Widget build(BuildContext context) {
    final List<String> uploadHeading = [notes, files, papers, books, jobs];
    final List<String> uploadValue = [
      data.notesCount.toString(),
      data.filesCount.toString(),
      data.papersCount.toString(),
      data.booksCount.toString(),
      data.jobsCount.toString(),
    ];
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < uploadValue.length; i++)
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Text(
                      uploadValue[i],
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      uploadHeading[i],
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
