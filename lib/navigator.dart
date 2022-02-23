import 'package:app1/Principal/home_page.dart';
import 'package:app1/Principal/qrscan_page.dart';
import 'package:app1/Usuario/notifications_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key key}) : super(key: key);

  @override
  State<NavigationPage> createState() {
    return NavigationPageState();
  }
}

class NavigationPageState extends State<NavigationPage> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    HomePage(),
    QrscanPage(),
    NotificationsPage(),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QrCode"),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu_sharp), label: "Pedidos"),
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