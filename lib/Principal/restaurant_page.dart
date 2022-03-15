import 'package:flutter/material.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key key}) : super(key: key);

  @override
  State<RestaurantPage> createState() {
    return RestaurantPageState();
  }
}

class RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                child: Image.asset('assets/imagens/banner.jpg'),
              ),
            ),
            Row(
                children: <Widget>[
                  Text('   Restaurante MyOrder',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text('ABERTO',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 15),
                children: <TextSpan>[
                  TextSpan(text: '    Pizzaria  •  3,0 km  •'),
                  TextSpan(
                    text: String.fromCharCodes(
                      Runes('  \u0024\u0024\u0024'),
                    ),
                  ),
                  TextSpan(
                    text: String.fromCharCodes(
                      Runes('\u0024\u0024'),
                    ),
                    style: TextStyle(color: Colors.black26),
                  ),
                ],
              ),
            ),
            Container(height: 20),
            const Text('   Avaliações',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Container(height: 10),
            ListTile(
              isThreeLine: true,
              leading: const Icon(Icons.account_circle),
              title: const Text('Leonardo'),
              subtitle: const Text('Pratos excelentes e um ótimo atendimento!!'),
            ),
            ListTile(
              isThreeLine: true,
              leading: const Icon(Icons.account_circle),
              title: const Text('Lucas'),
              subtitle: const Text('Sem dúvidas é a melhor pizzaria da região quem for com certeza não ira se arrepender'),
            ),
            ListTile(
              isThreeLine: true,
              leading: const Icon(Icons.account_circle),
              title: const Text('Mateus'),
              subtitle: const Text('Péssimo atendimento!!!Meu pedido demorou mais de 2 horas para ficar pronto'),
            ),
            Divider(),
            const Text('   Sobre',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Container(height: 10),
            ListTile(
              leading: const Icon(Icons.restaurant_menu_outlined),
              title: const Text('Cardápio'),
              subtitle: const Text('Menu do restaurante'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.chair_outlined),
              title: const Text('Reserva'),
              subtitle: const Text('Reservar uma mesa'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_page_outlined),
              title: const Text('Contato'),
              subtitle: const Text('Telefone e Redes sociais'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ],
        ),
      ),
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
      centerTitle: true,
      title: const Text('Restaurante MyOrder'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_outline),
        ),
      ],
    );
  }
}
