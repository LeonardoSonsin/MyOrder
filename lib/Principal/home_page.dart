import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MenuDoUsuario(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Restaurantes'),
        leading: IconButton(icon: const Icon(Icons.account_circle_outlined), onPressed: () {_scaffoldKey.currentState.openDrawer();},),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: CardapioListaItens(),
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
          child: ListView(
        children: const [
          Restaurante(),
          Divider(),
          Restaurante(),
          Divider(),
          Restaurante(),
          Divider(),
          Restaurante(),
          Divider(),
          Restaurante(),
          Divider(),
          Restaurante(),
          Divider(),
          Restaurante(),
          Divider(),
          Restaurante(),
          Divider(),
          Restaurante(),
        ],
      )),
    );
  }
}

class Restaurante extends StatelessWidget {
  const Restaurante({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 50,
        height: 50,
        child: Image.asset('assets/imagens/icone_restaurante.png'),
      ),
      title: const Text('Nome', style: TextStyle(fontSize: 15)),
      subtitle: const Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 14.0,
          ),
          children: <TextSpan>[
            TextSpan(text: '★ 4,9  ', style: TextStyle(color: Colors.amber)),
            TextSpan(text: '•  Tipo  •  3,0 km'),
          ],
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.favorite_outline),
        onPressed: () {},
      ),
      onTap: () {},
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
      child: Column(children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: Image.asset('assets/imagens/logo.png'),
          accountName: const Text('Usuário Teste'),
          accountEmail: const Text('myorder@myorder.com'),
        ),
        ListTile(
          leading: const Icon(Icons.account_circle_outlined),
          title: const Text('Minha conta'),
          subtitle: const Text('Informações da sua conta'),
          onTap: () {
            Navigator.of(context).pushNamed('/account');
          },
        ),
        ListTile(
          leading: const Icon(Icons.notifications_none_outlined),
          title: const Text('Notificações'),
          subtitle: const Text('Minha central de notificações'),
          onTap: () {
            Navigator.of(context).pushNamed('/notifications');
          },
        ),
        ListTile(
          leading: const Icon(Icons.credit_card),
          title: const Text('Pagamentos'),
          subtitle: const Text('Meus saldos e cartões'),
          onTap: () {
            Navigator.of(context).pushNamed('/payments');
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined),
          title: const Text('Configurações'),
          subtitle: const Text('Minhas configurações'),
          onTap: () {
            Navigator.of(context).pushNamed('/settings');
          },
        ),
        ListTile(
          leading: const Icon(Icons.help_outline),
          title: const Text('Suporte'),
          subtitle: const Text('Contate nossa equipe'),
          onTap: () {
            Navigator.of(context).pushNamed('/help');
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Sair'),
          subtitle: const Text('Finalizar sessão'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/login');
          },
        ),
      ]),
    );
  }
}
