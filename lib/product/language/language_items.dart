class AppStringConstants {
  static AppStringConstants? _instance;
  static AppStringConstants? get instance {
    _instance ??= AppStringConstants._init();
    return _instance;
  }

  AppStringConstants._init();
  final String pageViewButtonTitle = 'Get Started';

  final String signInAppBarTitle = 'Sign In';
  final String signInTitle = 'Welcome';
  final String signInSubTitle =
      'Enter your Phone number or Email for sign in, Or ';
  final String signInButtonTitle = 'Create new account';
  final String signInEmailForm = 'Email';
  final String signInPasswordForm = 'Password';
  final String signInTextButton = 'Forgot Password';
  final String signInFacebookButton = 'Connect With Facebook';
  final String signInGoogleButton = 'Connect With Google';
}

class LanguageItems {
  static const pageViewTitle1 = "All your favorites";
  static const pageViewTitle2 = "Free delivery offers";
  static const pageViewTitle3 = "Choose your food";
  static const pageViewSubTitle1 =
      "Order from the best local restaurants with easy, on-demand delivery.";
  static const pageViewSubTitle2 =
      "Free delivery for new customers via Apple Pay and others payment.";
  static const pageViewSubTitle3 =
      "Easily find your type of food craving and you’ll get delivery in wide range.";
}
