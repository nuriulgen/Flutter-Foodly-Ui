class AppStringConstants {
  static AppStringConstants? _instance;
  static AppStringConstants? get instance {
    _instance ??= AppStringConstants._init();
    return _instance;
  }

  AppStringConstants._init();
  final String pageViewButtonTitle = 'Get Started';
}

class LanguageItems {
  static const pageViewTitle1 = "All your favorites";
  static const pageViewTitle2 = "Free delivery offers";
  static const pageViewTitle3 = "Choose your food";
  static const pageViewSubTitle1 =
      "Order from the best local restaurants with easy, on-demand delivery.";
  static const pageViewSubTitle2 =
      "Free delivery for new customers via Apple Pay and others payment methods.";
  static const pageViewSubTitle3 =
      "Easily find your type of food craving and you’ll get delivery in wide range.";
}
