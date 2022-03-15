import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: Image.asset('assets/imagens/logo.png'),
          accountName: const Text('Usuário Teste'),
          accountEmail: const Text('myorder@myorder.com'),
        ),
        ListTile(
          leading: const Icon(Icons.account_circle_outlined),
          title: const Text('Minha conta'),
          subtitle: const Text('Informações da sua conta'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context).pushNamed('/account');
          },
        ),
        ListTile(
          leading: const Icon(Icons.notifications_none_outlined),
          title: const Text('Notificações'),
          subtitle: const Text('Central de notificações'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context).pushNamed('/notifications');
          },
        ),
        ListTile(
          leading: const Icon(Icons.credit_card),
          title: const Text('Pagamentos'),
          subtitle: const Text('Meus saldos e cartões'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context).pushNamed('/payments');
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined),
          title: const Text('Configurações'),
          subtitle: const Text('Minhas configurações'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context).pushNamed('/settings');
          },
        ),
        ListTile(
          leading: const Icon(Icons.help_outline),
          title: const Text('Suporte'),
          subtitle: const Text('Contate nossa equipe'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context).pushNamed('/help');
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Sair'),
          subtitle: const Text('Finalizar sessão'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/login');
          },
        ),
      ]),
    );
  }
}