import 'dart:io';
import 'dart:typed_data';

import 'package:feedback/feedback.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/features/account/presentation/pages/widgets/rate_dialog_box.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/user/user_cubit.dart';
import 'package:lazy_engineer/navigation/dio/rate_my_app.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import 'package:path_provider/path_provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // void onPress() {
    //   ScaffoldMessenger.of(context).showSnackBar(toBeBuildInFutureSnackBar);
    // }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(accounts, style: theme.textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 80),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.user),
                    title: Text(profile, style: theme.textTheme.titleMedium),
                    onTap: () => context.push(RouteGenerator.profileRoute),
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.bell),
                    title: Text(
                      notification,
                      style: theme.textTheme.titleMedium,
                    ),
                    onTap: () =>
                        context.push(RouteGenerator.notificationsRoute),
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.message),
                    title: Text(
                      giveFeedback,
                      style: theme.textTheme.titleMedium,
                    ),
                    onTap: () {
                      BetterFeedback.of(context)
                          .show((UserFeedback feedback) async {
                        try {
                          final screenshotFilePath =
                              await writeImageToStorage(feedback.screenshot);
                          final Email email = Email(
                            body: feedback.text,
                            subject: 'App Feedback',
                            recipients: [AppConfig.email],
                            attachmentPaths: [screenshotFilePath],
                            isHTML: false,
                          );
                          await FlutterEmailSender.send(email);
                        } catch (e) {
                          debugPrint("error $e");
                        }
                      });
                    },
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.rankingStar),
                    title: Text(rateUs, style: theme.textTheme.titleMedium),
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return RateDialogBox(
                            rateMyApp: RateMyAppProvider.instance,
                            onCancel: () => Navigator.pop(context),
                          );
                        },
                      );
                    },
                  ),
                  // ListTile(
                  //   leading: const CustomIcon(AppIcons.profileIcon),
                  //   title: Text(
                  //     invitePeopleToTheSite,
                  //     style: theme.textTheme.titleMedium,
                  //   ),
                  //   onTap: onPress,
                  // ),
                  // ListTile(
                  //   leading: const CustomIcon(AppIcons.starIcon),
                  //   title: Text(whatsNew, style: theme.textTheme.titleMedium),
                  //   onTap: onPress,
                  // ),
                  ListTile(
                      leading: FaIcon(FontAwesomeIcons.envelope),
                      title: Text(connectWithMe,
                          style: theme.textTheme.titleMedium),
                      onTap: () => context.go(RouteGenerator.contactUsRoute)),
                ],
              ),
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
