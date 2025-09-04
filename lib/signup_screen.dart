import 'package:shopify/home_screen.dart';
import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
            AppLocalizations.of(context)!.signUp,
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
                  AppLocalizations.of(context)!.createNewAccount,
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Suwannaphum",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB9375D),
                    ),
                ),

                Text(
                  AppLocalizations.of(context)!.joinToday,
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
                    AppLocalizations.of(context)!.fullName,
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
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.fullNameLabel,
                    border: OutlineInputBorder(),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppLocalizations.of(context)!.errorNameRequired;
                    }
                    if (!RegExp(r'^[A-Z]').hasMatch(value)) {
                      return AppLocalizations.of(context)!.errorNameUppercase;
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

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
                    border: OutlineInputBorder(),
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
                    border: OutlineInputBorder(),
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

                const SizedBox(height: 20),

                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    AppLocalizations.of(context)!.confirmPassword,
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
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.confirmPasswordLabel,
                    border: OutlineInputBorder(),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppLocalizations.of(context)!.errorConfirmRequired;
                    }
                    if (value != _passwordController.text) {
                      return AppLocalizations.of(context)!.errorPasswordsMismatch;
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
                        vertical: 15, horizontal: 50
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
                                AppLocalizations.of(context)!.success,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Suwannaphum",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            ),
                            content: Text(
                                AppLocalizations.of(context)!.accountCreated,
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
                                child:TextButton(
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
                                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
                    AppLocalizations.of(context)!.createAccount,
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