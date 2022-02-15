import 'Principal/home_page.dart';
import 'Principal/login_page.dart';
import 'Cadastro/register_page.dart';
import 'Cadastro/register_page2.dart';
import 'Cadastro/register_page3.dart';
import 'Cadastro/forget_page.dart';
import 'Usuário/account_page.dart';
import 'Usuário/settings_page.dart';
import 'Usuário/help_page.dart';

import 'app_controller.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme
              ? Brightness.dark
              : Brightness.light,
          ),
          initialRoute: '/login',
          routes: {
            '/login': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/forget': (context) => ForgetPage(),
            '/register1': (context) => RegisterPage(),
            '/register2': (context) => RegisterPage2(),
            '/register3': (context) => RegisterPage3(),
            '/account': (context) => AccountPage(),
            '/settings': (context) => SettingsPage(),
            '/help': (context) => HelpPage(),
          }
        );
      },
    );
  }
}