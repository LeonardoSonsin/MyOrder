import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  State<MenuPage> createState() {
    return MenuPageState();
  }
}

class MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cardápio'),
        automaticallyImplyLeading: false,
      ),
      body: const order_Body(),
    );
  }
}

class order_Body extends StatelessWidget {
  const order_Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            const Text('   Título Bloco',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Divider(),
            Flexible(
              child: ListView.builder(
                itemCount: 15,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListaPratos(),
              ),
            ),
          ],
        ),
    );
  }
}

class ListaPratos extends StatefulWidget {
  const ListaPratos({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => new Prato();
}

class Prato extends State<ListaPratos> {
  bool Favorito = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: SizedBox(
        width: 50,
        height: 50,
        child: Image.asset('assets/imagens/icone_restaurante.png'),
      ),
      title: const Text('Título do prato', style: TextStyle(fontSize: 15)),
      subtitle: Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 14.0,
          ),
          children: <TextSpan>[
            TextSpan(text: 'Resumo da descrição e dos itens que compoem o prato.', style: TextStyle(fontSize: 12)),
            TextSpan(text: String.fromCharCodes(Runes('\nR\u0024 59,90'),), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green),),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/food');
      },
    );
  }
}
