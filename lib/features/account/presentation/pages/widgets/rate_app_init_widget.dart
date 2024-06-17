import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RateAppInitWidget extends StatefulWidget {
  final Widget Function(RateMyApp) builder;
  const RateAppInitWidget({super.key, required this.builder});

  @override
  State<RateAppInitWidget> createState() => _RateAppInitWidgetState();
}

class _RateAppInitWidgetState extends State<RateAppInitWidget> {
  RateMyApp? rateMyApp;
  @override
  Widget build(BuildContext context) {
    return RateMyAppBuilder(
      rateMyApp: RateMyApp(
        googlePlayIdentifier: AppConfig.playstoreId,
      ),
      onInitialized: (context, rateMyApp) {
        setState(() => this.rateMyApp = rateMyApp);
      },
      builder: (context) => rateMyApp == null
          ? Center(child: CircularProgressIndicator())
          : widget.builder(rateMyApp!),
    );
  }
}
