import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app_ui/Menu/screens/home_screen.dart';
import 'package:flutter_news_app_ui/SignIn/pages/login_or_register_page.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
static const routeName = '/Auth';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body :StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();

        }

        else {
          return LoginOrRegisterPage();
        }
      }
    ),
    );
  }
}