

import "package:flutter/material.dart";
import "package:flutter_news_app_ui/SignIn/pages/login_page.dart";
import "package:flutter_news_app_ui/SignIn/pages/register_page.dart";

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});
  static const routeName = '/or';

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool ShowLoginPage = true;

  void tooglePages () {
    setState(() {
      ShowLoginPage =!ShowLoginPage;  
    });
  }
  @override
  Widget build(BuildContext context) {
      if (ShowLoginPage){
        return LoginPage(onTap: tooglePages);
      }else {
        return RegisterPage(onTap: tooglePages);  
      }
  }

}