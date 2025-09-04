import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shopify/welcome_screen.dart';
import 'package:shopify/l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    final _MyAppState? state =
    context.findAncestorStateOfType<_MyAppState>();
    state?._setLocale(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void _setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
      const ApplicationSwitcherDescription(
        label: "Shopify",
        primaryColor: 0xFFB9375D,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopify',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFB9375D),
          foregroundColor: Colors.white,
        ),

        fontFamily: "Suwannaphum",

        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFB9375D),
          selectionColor: Color(0xFFEEEEEE),
          selectionHandleColor: Color(0xFFB9375D),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFFE7D3D3),
          focusColor: const Color(0xFFB9375D),
          hoverColor: const Color(0xFFB9375D),
          iconColor: const Color(0xFFB9375D),
          labelStyle: const TextStyle(
            color: Color(0xFFB9375D),
            fontSize: 16,
            fontFamily: "Suwannaphum",
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFB9375D), width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFB9375D), width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD25D5D), width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD25D5D), width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFFB9375D),
            fontSize: 18,
            fontFamily: "Suwannaphum",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: _locale,
      home: const WelcomeScreen(),
    );
  }
}