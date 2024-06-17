import 'package:rate_my_app/rate_my_app.dart';

class RateMyAppProvider {
  static late RateMyApp instance;
  RateMyAppProvider(RateMyApp newInstance) {
    instance = newInstance;
  }
}
