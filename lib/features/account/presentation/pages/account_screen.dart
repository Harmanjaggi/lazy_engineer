import 'dart:io';
import 'dart:typed_data';

import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import 'package:path_provider/path_provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    void onPress() {
      ScaffoldMessenger.of(context).showSnackBar(toBeBuildInFutureSnackBar);
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(accounts, style: theme.textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: ListView(
          children: [
            ListTile(
              leading: const CustomIcon(AppIcons.profileIcon),
              title: Text(profile, style: theme.textTheme.titleMedium),
              onTap: () => context.push(RouteGenerator.profileRoute),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.notificationIcon),
              title: Text(
                notification,
                style: theme.textTheme.titleMedium,
              ),
              onTap: () => context.push(RouteGenerator.notificationsRoute),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.mailIcon),
              title: Text(
                giveFeedback,
                style: theme.textTheme.titleMedium,
              ),
              onTap: () {
                BetterFeedback.of(context).show((UserFeedback feedback) async {
                  final screenshotFilePath = await writeImageToStorage(feedback.screenshot);

                  final Email email = Email(
                    body: feedback.text,
                    subject: 'App Feedback',
                    recipients: ['harmanjaggs@gmail.com'],
                    attachmentPaths: [screenshotFilePath],
                    isHTML: false,
                  );
                  await FlutterEmailSender.send(email);
                });
              },
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.rateUsIcon),
              title: Text(rateUs, style: theme.textTheme.titleMedium),
              onTap: onPress,
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.profileIcon),
              title: Text(
                invitePeopleToTheSite,
                style: theme.textTheme.titleMedium,
              ),
              onTap: onPress,
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.starIcon),
              title: Text(whatsNew, style: theme.textTheme.titleMedium),
              onTap: onPress,
            ),
            ListTile(
              title: Text(aboutUs, style: theme.textTheme.titleMedium),
              onTap: onPress,
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            SizedBox(height: 20),
            Center(
              child: CustomButton(
                text: logOut,
                onPressed: () async {
                  await context.read<AuthCubit>().signOut();
                  context.go(RouteGenerator.authRoute);
                },
                width: 130,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> writeImageToStorage(Uint8List feedbackScreenshot) async {
    final Directory output = await getTemporaryDirectory();
    final String screenshotFilePath = '${output.path}/feedback.png';
    final File screenshotFile = File(screenshotFilePath);
    await screenshotFile.writeAsBytes(feedbackScreenshot);
    return screenshotFilePath;
  }
}
