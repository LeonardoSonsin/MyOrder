import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: CardapioListaItens(),
      floatingActionButton: BotaoFlutuante(),
      drawer: MenuDoUsuario(),
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
      title: const Text('CARDÁPIO'),
    );
  }
}

class BotaoFlutuante extends StatelessWidget {
  const BotaoFlutuante({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}

class CardapioListaItens extends StatelessWidget {
  const CardapioListaItens({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Card(
        child: Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ListTile(
                  title: const Text('ENTRADAS', style: TextStyle(fontSize: 30)),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('PIZZAS', style: TextStyle(fontSize: 30)),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('CALZONES', style: TextStyle(fontSize: 30)),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('SOBREMESAS', style: TextStyle(fontSize: 30)),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('BEBIDAS', style: TextStyle(fontSize: 30)),
                  onTap: () {},
                ),
              ],
            )),
      ),
    );
  }
}

class MenuDoUsuario extends StatelessWidget {
  const MenuDoUsuario({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.asset('assets/imagens/logo.png'),
            accountName: const Text('Usuário Teste'),
            accountEmail: const Text('myorder@myorder.com'),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Minha conta'),
            subtitle: const Text('Informações da sua conta'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            subtitle: const Text('Minhas configurações'),
            onTap: () {
              Navigator.of(context).pushNamed('/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support),
            title: const Text('Suporte'),
            subtitle: const Text('Contate nossa equipe'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.arrow_back_ios),
            title: const Text('Sair'),
            subtitle: const Text('Finalizar sessão'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}
