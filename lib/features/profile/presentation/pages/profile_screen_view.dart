import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/profile/presentation/widgets/upload_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView(this.data, {super.key});
  final UserDetail data;
    Future<void> _launchUrl(String url) async {
      if (!await launchUrl(Uri.parse(url))) {
        throw Exception('Could not launch $url');
      }
    }
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              data.fullName ?? '',
              style: theme.textTheme.titleLarge,
            ),
          ),
          Center(
            child: Text(
              '${data.designation} at ${data.company}',
              style: theme.textTheme.bodyMedium,
            ),
          ),
          if (data.github != null || data.instagram != null || data.linkedin != null || data.twitter != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (data.github != null)
                  IconButton(
                    onPressed: () => _launchUrl(data.github!),
                    icon: FaIcon(FontAwesomeIcons.github),
                  ),
                if (data.instagram != null)
                  IconButton(
                    onPressed: () => _launchUrl(data.instagram!),
                    icon: FaIcon(FontAwesomeIcons.instagram),
                  ),
                if (data.linkedin != null)
                  IconButton(
                    onPressed: () => _launchUrl(data.linkedin!),
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                  ),
                if (data.twitter != null)
                  IconButton(
                    onPressed: () => _launchUrl(data.twitter!),
                    icon: FaIcon(FontAwesomeIcons.twitter),
                  ),
              ],
            ),
          const SizedBox(height: 16),
          Text(
            data.bio ?? '',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Text(
            upload,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          UploadView(data),
          const SizedBox(height: 16),
          Text(
            contact,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 6),
          contactRow(
            icon: AppIcons.mailIcon,
            title: email,
            body: data.email ?? '',
            onTap: () => _launchUrl('mailto:${data.email}'),
            theme: theme,
          ),
          const SizedBox(height: 14),
          Text(
            education,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.university.toString(),
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          // const SizedBox(height: 16),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(experienceLevel, style: theme.textTheme.titleLarge),
          //     Text(
          //       data.experienceLevel.toString(),
          //       style: theme.textTheme.bodyLarge,
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 16),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(jobType, style: theme.textTheme.titleLarge),
          //     Text(
          //       data.jobType.toString(),
          //       style: theme.textTheme.bodyLarge,
          //     ),
          //   ],
          // ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget contactRow(
   { required String icon,
    required String title,
    required String body,
    required Function() onTap,
    required ThemeData theme,}
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      child: Row(
        children: [
          CustomIcon(icon),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: theme.textTheme.titleMedium),
              TextButton(onPressed: onTap,
              child: Text(body, style: theme.textTheme.titleSmall),),
            ],
          ),
        ],
      ),
    );
  }
}
