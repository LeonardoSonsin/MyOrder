import 'package:app1/Cardapio/food.dart';
import 'package:app1/Principal/menu_page.dart';
import 'package:app1/Principal/qrscan_page.dart';
import 'package:app1/home_navigator.dart';
import 'package:app1/order_navigator.dart';
import 'package:scoped_model/scoped_model.dart';

import 'Principal/login_page.dart';
import 'Cadastro/register_page.dart';
import 'Cadastro/register_page2.dart';
import 'Cadastro/register_page3.dart';
import 'Cadastro/forget_page.dart';
import 'Principal/pay_page.dart';
import 'Principal/restaurant_page.dart';
import 'Usuario/account_page.dart';
import 'Usuario/help_page.dart';
import 'Usuario/notifications_page.dart';
import 'Usuario/payments_page.dart';
import 'Usuario/settings_page.dart';

import 'app_controller.dart';
import 'package:flutter/material.dart';
import 'models/carrinho_model/carrinho_model.dart';
import 'Principal/cart_page.dart';
import 'models/carrinho_model/comanda_model.dart';

class AppWidget extends StatelessWidget {
  CartModel cartModel;
  AppWidget({
    Key key, @required this.cartModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      model: cartModel,
      child: AnimatedBuilder(
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
                '/forget': (context) => ForgetPage(),
                '/register1': (context) => RegisterPage(),
                '/register2': (context) => RegisterPage2(),
                '/register3': (context) => RegisterPage3(),
                '/home': (context) => HomeNavigationPage(),
                '/qrscan': (context) => QrscanPage(),
                '/notifications': (context) => NotificationsPage(),
                '/payments': (context) => PaymentsPage(),
                '/settings': (context) => SettingsPage(),
                '/help': (context) => HelpPage(),
                '/account': (context) => AccountPage(),
                '/restaurant': (context) => RestaurantPage(),
                '/order': (context) => OrderNavigationPage(),
                '/food': (context) => FoodPage(),
                '/cart': (context) => CartPage(),
                '/pay': (context) => PayPage(),
              });
        },
      ),
    );
  }
}
