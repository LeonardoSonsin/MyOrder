import 'package:app1/app_controller.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<SettingsPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        ),
      ),
      body: Container(
        child: Card(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
            child: Row(
              children: [
                Text(
                  'Modo Escuro',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                CustomSwitch(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
