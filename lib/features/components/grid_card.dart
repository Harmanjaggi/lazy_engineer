import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/home/data/models/categories_model/categories_model.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    super.key,
    this.networkImage,
    this.image,
    required this.title,
    required this.body,
    this.placeHolder,
    this.fixedHeight = false,
  });
  final String? networkImage;
  final String? placeHolder;
  final String? image;
  final String title;
  final String body;
  final bool fixedHeight;

  factory GridCard.category(CategoriesModel data) {
    return GridCard(
      image: data.image,
      title: data.title,
      body: data.description,
    );
  }
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      decoration: kRoundedContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: CustomImage(
              networkImage: networkImage,
              placeHolder: placeHolder,
              image: image,
              height: 120,
              padding: const EdgeInsets.all(10),
              radius: kRoundedRectangleRadius,
              onlyTop: true,
              boxFit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              maxLines: fixedHeight ? 1 : null,
              overflow: fixedHeight ? TextOverflow.ellipsis : null,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
            child: Text(
              body,
              style: theme.textTheme.bodyMedium,
              maxLines: fixedHeight ? 2 : 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
