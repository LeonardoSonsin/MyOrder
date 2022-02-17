import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  State<AccountPage> createState() {
    return AccountPageState();
  }
}

class AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: ContaListaItens(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      title: const Text('Minha conta'),
    );
  }
}

class ContaListaItens extends StatelessWidget {
  const ContaListaItens({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Card(
        child: ListView(
              children: <Widget>[
                ListTile(
                  title: const Text('Informações pessoais', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Nome completo e CPF'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Dados de contato', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('E-mail e telefone de contato'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Credenciais', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Meios de acesso a sua conta'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
              ],
            )),
      );
  }
}

