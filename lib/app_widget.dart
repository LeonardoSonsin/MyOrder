import 'package:app1/Cadastro/register_page.dart';
import 'package:app1/Cadastro/register_page2.dart';
import 'package:app1/settings.page.dart';
import 'package:flutter/material.dart';
import 'Cadastro/register_page3.dart';
import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

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
            '/register1': (context) => RegisterPage(),
            '/register2': (context) => RegisterPage2(),
            '/register3': (context) => RegisterPage3(),
            '/settings': (context) => SettingsPage(),
          }
        );
      },
    );
  }
}