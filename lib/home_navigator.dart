import 'package:app1/Principal/home_page.dart';
import 'package:app1/Principal/qrscan_page.dart';
import 'package:flutter/material.dart';
import 'Usuario/user_page.dart';

class HomeNavigationPage extends StatefulWidget {
  const HomeNavigationPage({Key key}) : super(key: key);

  @override
  State<HomeNavigationPage> createState() {
    return HomeNavigationPageState();
  }
}

class HomeNavigationPageState extends State<HomeNavigationPage> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    HomePage(),
    QrscanPage(),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QrCode"),
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