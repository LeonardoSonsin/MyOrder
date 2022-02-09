import 'package:app1/register_page.dart';
import 'package:app1/settings.page.dart';
import 'package:flutter/material.dart';
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
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/register': (context) => RegisterPage(),
            '/settings': (context) => SettingsPage(),
          }
        );
      },
    );
  }
}