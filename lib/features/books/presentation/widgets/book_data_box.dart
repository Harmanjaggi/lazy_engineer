import 'package:flutter/material.dart';

class BookDataBox extends StatelessWidget {
  const BookDataBox({
    super.key,
    required this.writers,
    required this.bookName,
    required this.description,
  });
  final String writers;
  final String bookName;
  final String description;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    String allWriters = writers.toString();
    allWriters = 'By- $writers';
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              allWriters.toUpperCase(),
              style: theme.textTheme.labelSmall,
            ),
            const SizedBox(height: 8),
            Text(
              bookName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
