// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Shopify';

  @override
  String get welcomeText => 'Let\'s go shopping';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signIn => 'Sign In';

  @override
  String get createNewAccount => 'Create New Account';

  @override
  String get joinToday => 'Join Shopify today';

  @override
  String get fullName => 'Full Name';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get fullNameLabel => 'Enter your full Name';

  @override
  String get emailLabel => 'Enter your email';

  @override
  String get passwordLabel => 'Enter your password';

  @override
  String get confirmPasswordLabel => 'Confirm your password';

  @override
  String get errorNameRequired => 'Full name is required';

  @override
  String get errorNameUppercase => 'First letter must be uppercase';

  @override
  String get errorEmailRequired => 'Email is required';

  @override
  String get errorEmailInvalid => 'Email must contain @';

  @override
  String get errorPasswordRequired => 'Password is required';

  @override
  String get errorPasswordShort => 'Password must be at least 6 characters';

  @override
  String get errorConfirmRequired => 'Confirm your password';

  @override
  String get errorPasswordsMismatch => 'Passwords do not match';

  @override
  String get createAccount => 'Create Account';

  @override
  String get success => 'Success!';

  @override
  String get accountCreated => 'Account created successfully';

  @override
  String get close => 'Close';

  @override
  String get welcomeBack => 'Welcome Back';

  @override
  String get signInTo => 'Sign in to Shopify';

  @override
  String get welcome => 'Welcome!';

  @override
  String get accountSignedIn => 'Account sign-in successfully';

  @override
  String get ourProducts => 'Our Products';

  @override
  String get featuredProducts => 'Featured Products';

  @override
  String get shopCollection => 'Shop Our Collection';

  @override
  String get hotOffers => 'Hot Offers';

  @override
  String get addToCart => 'Product added to cart';

  @override
  String addedToCart(String product) {
    return '$product added to cart';
  }

  @override
  String get featured_t_shirts => 'T-shirts';

  @override
  String get featured_sweaters => 'Sweaters';

  @override
  String get featured_jeans => 'Jeans Pants';

  @override
  String get product_beige_cardigan => 'Beige Cardigan';

  @override
  String get product_beige_sweater => 'Beige Sweater';

  @override
  String get product_black_bag => 'Black Bag';

  @override
  String get product_beige_boots => 'Beige Boots';

  @override
  String get product_tshirt => 'T-shirt';

  @override
  String get product_jeans_jacket => 'Jeans Jacket';

  @override
  String get product_green_sweater => 'Green Sweater';

  @override
  String get product_brown_jacket => 'Brown Jacket';

  @override
  String get product_red_heels => 'Red Heels';

  @override
  String get product_shoes => 'Shoes';

  @override
  String get price_600 => '600 EGP';

  @override
  String get price_700 => '700 EGP';

  @override
  String get price_1000 => '1000 EGP';

  @override
  String get price_1200 => '1200 EGP';

  @override
  String get price_1600 => '1600 EGP';

  @override
  String get price_300 => '300 EGP';

  @override
  String get price_2000 => '2000 EGP';

  @override
  String get offer_buy2get1 => 'Buy 2 Get 1 Free';

  @override
  String get offer_accessories => 'On selected accessories';

  @override
  String get offer_buy1get50 => 'Buy 1 Get 2nd 50%';

  @override
  String get offer_heels => 'Limited time offer on selected heels';

  @override
  String get offer_50_tshirts => '50% Off On T-shirts';

  @override
  String get offer_tshirts => 'Limited time offer on all t-shirts';

  @override
  String get offer_bundle => 'Bundle Deals';

  @override
  String get offer_collection => 'Save more when you buy complete collection';

  @override
  String get offer_free_shipping => 'Free Shipping Weekend';

  @override
  String get offer_shipping => 'No delivery charges on orders above 500 EGP';
}