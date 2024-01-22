import 'package:flutter/material.dart';
import 'package:flutter_news_app_ui/Profile/drawer_page.dart';
import 'package:flutter_news_app_ui/Profile/edit.dart';
import 'package:flutter_news_app_ui/Profile/profile_page.dart';
import 'package:flutter_news_app_ui/SignIn/pages/auth_page.dart';
import 'package:flutter_news_app_ui/SignIn/pages/login_or_register_page.dart';
import 'package:flutter_news_app_ui/SignIn/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_news_app_ui/SignIn/pages/register_page.dart';
import 'firebase_options.dart';

import 'Menu/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tekno News',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/Auth',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
        LoginPage.routeName: (context) => LoginPage(onTap: () {  },),
        AuthPage.routeName: (context) => const AuthPage(),
        ProfileScreen.routeName: (context) =>  ProfileScreen(),
        DrawerPage.routeName:(context) => DrawerPage(),
        EditProfileScreen.routeName:(context) => const EditProfileScreen(),
        LoginOrRegisterPage.routeName: (context) => const LoginOrRegisterPage(),
        RegisterPage.routeName: (context) => RegisterPage(onTap: () {  },),

      },
    );
  }
}

// UI based on https://dribbble.com/shots/15193792-News-iOS-mobile-app/attachments/6937008?mode=media
