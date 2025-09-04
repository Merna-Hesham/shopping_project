// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Shopify`
  String get appName {
    return Intl.message('Shopify', name: 'appName', desc: '', args: []);
  }

  /// `Let's go shopping`
  String get welcomeText {
    return Intl.message(
      'Let\'s go shopping',
      name: 'welcomeText',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Join Shopify today`
  String get joinToday {
    return Intl.message(
      'Join Shopify today',
      name: 'joinToday',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full Name`
  String get fullNameLabel {
    return Intl.message(
      'Enter your full Name',
      name: 'fullNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get emailLabel {
    return Intl.message(
      'Enter your email',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordLabel {
    return Intl.message(
      'Enter your password',
      name: 'passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirmPasswordLabel {
    return Intl.message(
      'Confirm your password',
      name: 'confirmPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Full name is required`
  String get errorNameRequired {
    return Intl.message(
      'Full name is required',
      name: 'errorNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `First letter must be uppercase`
  String get errorNameUppercase {
    return Intl.message(
      'First letter must be uppercase',
      name: 'errorNameUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get errorEmailRequired {
    return Intl.message(
      'Email is required',
      name: 'errorEmailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Email must contain @`
  String get errorEmailInvalid {
    return Intl.message(
      'Email must contain @',
      name: 'errorEmailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get errorPasswordRequired {
    return Intl.message(
      'Password is required',
      name: 'errorPasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get errorPasswordShort {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'errorPasswordShort',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get errorConfirmRequired {
    return Intl.message(
      'Confirm your password',
      name: 'errorConfirmRequired',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get errorPasswordsMismatch {
    return Intl.message(
      'Passwords do not match',
      name: 'errorPasswordsMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Success!`
  String get success {
    return Intl.message('Success!', name: 'success', desc: '', args: []);
  }

  /// `Account created successfully`
  String get accountCreated {
    return Intl.message(
      'Account created successfully',
      name: 'accountCreated',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message('Close', name: 'close', desc: '', args: []);
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to Shopify`
  String get signInTo {
    return Intl.message(
      'Sign in to Shopify',
      name: 'signInTo',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get welcome {
    return Intl.message('Welcome!', name: 'welcome', desc: '', args: []);
  }

  /// `Account sign-in successfully`
  String get accountSignedIn {
    return Intl.message(
      'Account sign-in successfully',
      name: 'accountSignedIn',
      desc: '',
      args: [],
    );
  }

  /// `Our Products`
  String get ourProducts {
    return Intl.message(
      'Our Products',
      name: 'ourProducts',
      desc: '',
      args: [],
    );
  }

  /// `Featured Products`
  String get featuredProducts {
    return Intl.message(
      'Featured Products',
      name: 'featuredProducts',
      desc: '',
      args: [],
    );
  }

  /// `Shop Our Collection`
  String get shopCollection {
    return Intl.message(
      'Shop Our Collection',
      name: 'shopCollection',
      desc: '',
      args: [],
    );
  }

  /// `Hot Offers`
  String get hotOffers {
    return Intl.message('Hot Offers', name: 'hotOffers', desc: '', args: []);
  }

  /// `{product} added to cart`
  String addedToCart(String product) {
    return Intl.message(
      '$product added to cart',
      name: 'addedToCart',
      desc: '',
      args: [product],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
