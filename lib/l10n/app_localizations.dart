import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Shopify'**
  String get appName;

  /// No description provided for @welcomeText.
  ///
  /// In en, this message translates to:
  /// **'Let\'s go shopping'**
  String get welcomeText;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @createNewAccount.
  ///
  /// In en, this message translates to:
  /// **'Create New Account'**
  String get createNewAccount;

  /// No description provided for @joinToday.
  ///
  /// In en, this message translates to:
  /// **'Join Shopify today'**
  String get joinToday;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @fullNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter your full Name'**
  String get fullNameLabel;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get emailLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get passwordLabel;

  /// No description provided for @confirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm your password'**
  String get confirmPasswordLabel;

  /// No description provided for @errorNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Full name is required'**
  String get errorNameRequired;

  /// No description provided for @errorNameUppercase.
  ///
  /// In en, this message translates to:
  /// **'First letter must be uppercase'**
  String get errorNameUppercase;

  /// No description provided for @errorEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get errorEmailRequired;

  /// No description provided for @errorEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Email must contain @'**
  String get errorEmailInvalid;

  /// No description provided for @errorPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get errorPasswordRequired;

  /// No description provided for @errorPasswordShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get errorPasswordShort;

  /// No description provided for @errorConfirmRequired.
  ///
  /// In en, this message translates to:
  /// **'Confirm your password'**
  String get errorConfirmRequired;

  /// No description provided for @errorPasswordsMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get errorPasswordsMismatch;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get success;

  /// No description provided for @accountCreated.
  ///
  /// In en, this message translates to:
  /// **'Account created successfully'**
  String get accountCreated;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @signInTo.
  ///
  /// In en, this message translates to:
  /// **'Sign in to Shopify'**
  String get signInTo;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get welcome;

  /// No description provided for @accountSignedIn.
  ///
  /// In en, this message translates to:
  /// **'Account sign-in successfully'**
  String get accountSignedIn;

  /// No description provided for @ourProducts.
  ///
  /// In en, this message translates to:
  /// **'Our Products'**
  String get ourProducts;

  /// No description provided for @featuredProducts.
  ///
  /// In en, this message translates to:
  /// **'Featured Products'**
  String get featuredProducts;

  /// No description provided for @shopCollection.
  ///
  /// In en, this message translates to:
  /// **'Shop Our Collection'**
  String get shopCollection;

  /// No description provided for @hotOffers.
  ///
  /// In en, this message translates to:
  /// **'Hot Offers'**
  String get hotOffers;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Product added to cart'**
  String get addToCart;

  /// No description provided for @addedToCart.
  ///
  /// In en, this message translates to:
  /// **'{product} added to cart'**
  String addedToCart(String product);

  /// No description provided for @featured_t_shirts.
  ///
  /// In en, this message translates to:
  /// **'T-shirts'**
  String get featured_t_shirts;

  /// No description provided for @featured_sweaters.
  ///
  /// In en, this message translates to:
  /// **'Sweaters'**
  String get featured_sweaters;

  /// No description provided for @featured_jeans.
  ///
  /// In en, this message translates to:
  /// **'Jeans Pants'**
  String get featured_jeans;

  /// No description provided for @product_beige_cardigan.
  ///
  /// In en, this message translates to:
  /// **'Beige Cardigan'**
  String get product_beige_cardigan;

  /// No description provided for @product_beige_sweater.
  ///
  /// In en, this message translates to:
  /// **'Beige Sweater'**
  String get product_beige_sweater;

  /// No description provided for @product_black_bag.
  ///
  /// In en, this message translates to:
  /// **'Black Bag'**
  String get product_black_bag;

  /// No description provided for @product_beige_boots.
  ///
  /// In en, this message translates to:
  /// **'Beige Boots'**
  String get product_beige_boots;

  /// No description provided for @product_tshirt.
  ///
  /// In en, this message translates to:
  /// **'T-shirt'**
  String get product_tshirt;

  /// No description provided for @product_jeans_jacket.
  ///
  /// In en, this message translates to:
  /// **'Jeans Jacket'**
  String get product_jeans_jacket;

  /// No description provided for @product_green_sweater.
  ///
  /// In en, this message translates to:
  /// **'Green Sweater'**
  String get product_green_sweater;

  /// No description provided for @product_brown_jacket.
  ///
  /// In en, this message translates to:
  /// **'Brown Jacket'**
  String get product_brown_jacket;

  /// No description provided for @product_red_heels.
  ///
  /// In en, this message translates to:
  /// **'Red Heels'**
  String get product_red_heels;

  /// No description provided for @product_shoes.
  ///
  /// In en, this message translates to:
  /// **'Shoes'**
  String get product_shoes;

  /// No description provided for @price_600.
  ///
  /// In en, this message translates to:
  /// **'600 EGP'**
  String get price_600;

  /// No description provided for @price_700.
  ///
  /// In en, this message translates to:
  /// **'700 EGP'**
  String get price_700;

  /// No description provided for @price_1000.
  ///
  /// In en, this message translates to:
  /// **'1000 EGP'**
  String get price_1000;

  /// No description provided for @price_1200.
  ///
  /// In en, this message translates to:
  /// **'1200 EGP'**
  String get price_1200;

  /// No description provided for @price_1600.
  ///
  /// In en, this message translates to:
  /// **'1600 EGP'**
  String get price_1600;

  /// No description provided for @price_300.
  ///
  /// In en, this message translates to:
  /// **'300 EGP'**
  String get price_300;

  /// No description provided for @price_2000.
  ///
  /// In en, this message translates to:
  /// **'2000 EGP'**
  String get price_2000;

  /// No description provided for @offer_buy2get1.
  ///
  /// In en, this message translates to:
  /// **'Buy 2 Get 1 Free'**
  String get offer_buy2get1;

  /// No description provided for @offer_accessories.
  ///
  /// In en, this message translates to:
  /// **'On selected accessories'**
  String get offer_accessories;

  /// No description provided for @offer_buy1get50.
  ///
  /// In en, this message translates to:
  /// **'Buy 1 Get 2nd 50%'**
  String get offer_buy1get50;

  /// No description provided for @offer_heels.
  ///
  /// In en, this message translates to:
  /// **'Limited time offer on selected heels'**
  String get offer_heels;

  /// No description provided for @offer_50_tshirts.
  ///
  /// In en, this message translates to:
  /// **'50% Off On T-shirts'**
  String get offer_50_tshirts;

  /// No description provided for @offer_tshirts.
  ///
  /// In en, this message translates to:
  /// **'Limited time offer on all t-shirts'**
  String get offer_tshirts;

  /// No description provided for @offer_bundle.
  ///
  /// In en, this message translates to:
  /// **'Bundle Deals'**
  String get offer_bundle;

  /// No description provided for @offer_collection.
  ///
  /// In en, this message translates to:
  /// **'Save more when you buy complete collection'**
  String get offer_collection;

  /// No description provided for @offer_free_shipping.
  ///
  /// In en, this message translates to:
  /// **'Free Shipping Weekend'**
  String get offer_free_shipping;

  /// No description provided for @offer_shipping.
  ///
  /// In en, this message translates to:
  /// **'No delivery charges on orders above 500 EGP'**
  String get offer_shipping;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
