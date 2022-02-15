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
        title: const Text('Configurações'),
      ),
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Modo escuro', style: TextStyle(fontSize: 15)),
              trailing: CustomSwitch(),
            ),
            Divider(),
            ListTile(
              title: const Text('Gerenciar notificações', style: TextStyle(fontSize: 15)),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Sobre esta versão', style: TextStyle(fontSize: 15)),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Limpar histórico de busca', style: TextStyle(fontSize: 15)),
              onTap: () {},
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key key}) : super(key: key);

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
