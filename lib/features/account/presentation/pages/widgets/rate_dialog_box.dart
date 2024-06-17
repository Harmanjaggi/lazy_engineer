import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RateDialogBox extends StatelessWidget {
  final RateMyApp rateMyApp;
  final void Function() onCancel;
  const RateDialogBox(
      {super.key, required this.rateMyApp, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Rate this app'),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
                'If you like this app, please take a little bit of your time to review it.'),
            Text('It really helps us a lot.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text("CANCEL"),
          onPressed: () => onCancel(),
        ),
        TextButton(
          child: Text("RATE"),
          onPressed: () {
            rateMyApp.showRateDialog(context);
          },
        ),
      ],
    );
  }
}
