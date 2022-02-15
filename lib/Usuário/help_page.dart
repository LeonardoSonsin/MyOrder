import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key key}) : super(key: key);

  @override
  State<HelpPage> createState() {
    return HelpPageState();
  }
}

class HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: AjudaListaItens(),
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
      title: const Text('Suporte'),
    );
  }
}

class AjudaListaItens extends StatelessWidget {
  const AjudaListaItens({
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
                  title: const Text('Pagamentos', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Dúvidas sobre pagamento'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Promoções', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Informações sobre promoções'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Conta', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Tudo sobre sua conta e dados cadastrais'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Sobre o MyOrder', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Sobre a gente e como virar nosso parceiro'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Produtos e serviços', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Conheça nossos produtos'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Política e termos', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Confira nossos termos de uso'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: const Text('Privacidade e dados', style: TextStyle(fontSize: 15)),
                  subtitle: const Text('Controle seus dados pessoais'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                const Divider(),
              ],
            )),
      );
  }
}
