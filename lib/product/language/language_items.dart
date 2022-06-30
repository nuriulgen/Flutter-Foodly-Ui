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

  final String signUpAppBarTitle = 'Sign Up';
  final String signUpTitle = 'Create account';
  final String signUpSubTitle =
      'Enter your Name, Email and Password for sign up. ';
  final String signUpButtonTitle = 'Already have an account?';
  final String signUpNameForm = 'Full Name';
  final String signUpElevatedButton = 'Sign Up';
  final String signUpMessage =
      'By Signing up you agree to our Terms Conditions & Privacy Policy.';

  final String forgotPasswordAppBarTitle = 'Forgot Password';
  final String forgotPasswordTitle = 'Forgot password';
  final String forgotPasswordSubTitle =
      'Enter your email address and we will send you a reset instructions. ';
  final String forgotPasswordButtonTitle = 'Reset Password';
  final String forgotEmailForm = 'Email Address';

  final String emailResetTitle = 'Reset email sent';
  final String emailResetSubTitle =
      'We have sent a instructions email to nuriulgen@gmail.com. ';
  final String emailResetButtonTitle = 'Having problem? ';
  final String emailElevatedButton = 'Send Again';

  final String homeAppBarTitle = 'San Francisco';
  final String homeAppBarSubTitle = 'DELIVERY TO ';
  final String homeTextButtonTitle = 'See All';
  final String homeTitle1 = 'Featured Partner';
  final String homeTitle2 = 'Best Picks Restaurants by team';
  final String homeTitle3 = 'All Restaurants';

  final String smallCardSubTitle = 'Colarodo, San Francisco';
  final String smallCardVotingButton = '4.7';
  final String smallCardTimeText = '25min';
  final String cardDeliveryType = 'Free Delivery';
  final String customCardTitle1 = 'Daylight Cofee';
  final String customCardTitle2 = 'McDonald\'s';

  final String bigCardSubTitle1 = ' \$\$ • Chinese • American • Deshi food ';

  final String bigCardVotingButton = '4.3';
  final String bigCardSubTitle2 = '200+ Ratings';
  final String bigCardTimeText = '45 min';
  final String bigcardDeliveryType = 'Free';
  final String bigCardTitle1 = 'McDonald\'s';
  final String bigCardTitle2 = 'Mayfield Bakery & Cafe';
  final String bigCardTitle3 = 'Cafe Brichor\'s';

  final String navigatorBarTitle1 = 'Home';
  final String navigatorBarTitle2 = 'Search';
  final String navigatorBarTitle3 = 'Orders';
  final String navigatorBarTitle4 = 'Profile';

  final String searchPageTitle = 'Search';
  final String searchPageHintText = 'Search On Foodly';
  final String searchPageTitle2 = 'Top Categories';
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
