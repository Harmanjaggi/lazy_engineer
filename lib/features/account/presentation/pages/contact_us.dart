import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/helper/input_validation.dart';
import 'package:url_launcher/url_launcher.dart';

class ContatctUs extends StatelessWidget with InputValidationMixin {
  const ContatctUs({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final formGlobalKey = GlobalKey<FormState>();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    Future<void> _launchUrl(String url) async {
      if (!await launchUrl(Uri.parse(url))) {
        throw Exception('Could not launch $url');
      }
    }

    final Email emailWithNoBody = Email(
      recipients: [AppConfig.email],
      isHTML: false,
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(aboutMe, style: theme.textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 80),
        child: Form(
          key: formGlobalKey,
          child: ListView(
            children: [
              SelectionArea(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Email: ",
                          style: theme.textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: AppConfig.email,
                        style: theme.textTheme.bodyLarge
                            ?.copyWith(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => FlutterEmailSender.send(emailWithNoBody),
                      ),
                      TextSpan(
                          text: "\nLinkdin: ",
                          style: theme.textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: AppConfig.linkdin,
                        style: theme.textTheme.bodyLarge
                            ?.copyWith(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(AppConfig.linkdinUrl),
                      ),
                      TextSpan(
                          text: "\nResume: ",
                          style: theme.textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "Link",
                        style: theme.textTheme.bodyLarge
                            ?.copyWith(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(AppConfig.resumeLink),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Divider(),
              const SizedBox(height: 16.0),
              Text(sendMessage, style: theme.textTheme.titleLarge),
              CustomTextField.secondary(
                controller: fullNameController,
                hintText: fullName,
                validator: usernameValidation,
              ),
              const SizedBox(height: 16),
              CustomTextField.multiLine(
                controller: messageController,
                hintText: message,
                validator: (value) => nullCheckNumValidation(value, message),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: CustomButton(
                  width: 200,
                  onPressed: () async {
                    try {
                      final Email email = Email(
                        body: messageController.text,
                        subject: "${fullNameController.text} Send a Message",
                        recipients: [AppConfig.email],
                        isHTML: false,
                      );
                      await FlutterEmailSender.send(email);
                    } catch (e) {
                      debugPrint("error $e");
                    }
                  },
                  text: sendMessage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
