import 'package:shopify/home_screen.dart';
import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),

      appBar: AppBar(
        backgroundColor: const Color(0xFFB9375D),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        title: Text(
            AppLocalizations.of(context)!.signIn,
            style: TextStyle(
              fontSize: 32,
              fontFamily: "Suwannaphum",
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.welcomeBack,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Suwannaphum",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB9375D),
                  ),
                ),

                Text(
                  AppLocalizations.of(context)!.signInTo,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Suwannaphum",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB9375D),
                  ),
                ),

                const SizedBox(height: 30),

                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    AppLocalizations.of(context)!.email,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Suwannaphum",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB9375D),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.emailLabel,
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppLocalizations.of(context)!.errorEmailRequired;
                    }
                    if (!value.contains("@")) {
                      return AppLocalizations.of(context)!.errorEmailInvalid;
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    AppLocalizations.of(context)!.password,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Suwannaphum",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB9375D),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.passwordLabel,
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppLocalizations.of(context)!.errorPasswordRequired;
                    }
                    if (value.length < 6) {
                      return AppLocalizations.of(context)!.errorPasswordShort;
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 40),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB9375D),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color(0xFFB9375D),
                            title: Text(
                                AppLocalizations.of(context)!.welcome,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Suwannaphum",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            ),
                            content: Text(
                                AppLocalizations.of(context)!.accountSignedIn,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Suwannaphum",
                                  color: Colors.white,
                                )
                            ),
                            actions: [
                              SizedBox(
                                width: double.infinity,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xFFE7D3D3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.of(context).pushReplacement(
                                      PageRouteBuilder(
                                        transitionDuration: const Duration(milliseconds: 600),
                                        pageBuilder: (context, animation, secondaryAnimation) =>
                                        const HomeScreen(),
                                        transitionsBuilder:
                                            (context, animation, secondaryAnimation, child) {
                                          return FadeTransition(
                                            opacity: animation,
                                            child: child,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!.close,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: "Suwannaphum",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFB9375D),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text(
                    AppLocalizations.of(context)!.signIn,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Suwannaphum",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}