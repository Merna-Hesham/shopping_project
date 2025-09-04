// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(product) => "${product} added to cart";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "accountCreated": MessageLookupByLibrary.simpleMessage(
      "Account created successfully",
    ),
    "accountSignedIn": MessageLookupByLibrary.simpleMessage(
      "Account sign-in successfully",
    ),
    "addedToCart": m0,
    "appName": MessageLookupByLibrary.simpleMessage("Shopify"),
    "close": MessageLookupByLibrary.simpleMessage("Close"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Confirm Password"),
    "confirmPasswordLabel": MessageLookupByLibrary.simpleMessage(
      "Confirm your password",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
    "createNewAccount": MessageLookupByLibrary.simpleMessage(
      "Create New Account",
    ),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emailLabel": MessageLookupByLibrary.simpleMessage("Enter your email"),
    "errorConfirmRequired": MessageLookupByLibrary.simpleMessage(
      "Confirm your password",
    ),
    "errorEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "Email must contain @",
    ),
    "errorEmailRequired": MessageLookupByLibrary.simpleMessage(
      "Email is required",
    ),
    "errorNameRequired": MessageLookupByLibrary.simpleMessage(
      "Full name is required",
    ),
    "errorNameUppercase": MessageLookupByLibrary.simpleMessage(
      "First letter must be uppercase",
    ),
    "errorPasswordRequired": MessageLookupByLibrary.simpleMessage(
      "Password is required",
    ),
    "errorPasswordShort": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 6 characters",
    ),
    "errorPasswordsMismatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "featuredProducts": MessageLookupByLibrary.simpleMessage(
      "Featured Products",
    ),
    "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
    "fullNameLabel": MessageLookupByLibrary.simpleMessage(
      "Enter your full Name",
    ),
    "hotOffers": MessageLookupByLibrary.simpleMessage("Hot Offers"),
    "joinToday": MessageLookupByLibrary.simpleMessage("Join Shopify today"),
    "ourProducts": MessageLookupByLibrary.simpleMessage("Our Products"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordLabel": MessageLookupByLibrary.simpleMessage(
      "Enter your password",
    ),
    "shopCollection": MessageLookupByLibrary.simpleMessage(
      "Shop Our Collection",
    ),
    "signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
    "signInTo": MessageLookupByLibrary.simpleMessage("Sign in to Shopify"),
    "signUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "success": MessageLookupByLibrary.simpleMessage("Success!"),
    "welcome": MessageLookupByLibrary.simpleMessage("Welcome!"),
    "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome Back"),
    "welcomeText": MessageLookupByLibrary.simpleMessage("Let\'s go shopping"),
  };
}
