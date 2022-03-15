import 'package:app1/Usuario/user_page.dart';
import 'package:flutter/material.dart';

import 'Principal/menu_page.dart';
import 'Principal/order_page.dart';

class OrderNavigationPage extends StatefulWidget {
  const OrderNavigationPage({Key key}) : super(key: key);

  @override
  State<OrderNavigationPage> createState() {
    return OrderNavigationPageState();
  }
}

class OrderNavigationPageState extends State<OrderNavigationPage> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    MenuPage(),
    OrderPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined), label: "Cardápio"),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu), label: "Pedido"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}