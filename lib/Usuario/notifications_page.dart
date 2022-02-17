import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key key}) : super(key: key);

  @override
  State<NotificationsPage> createState() {
    return NotificationsPageState();
  }
}

class NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: ListaNotificacoes(),
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
      title: const Text('Notificações'),
    );
  }
}

class ListaNotificacoes extends StatelessWidget {
  const ListaNotificacoes({
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
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset('assets/imagens/icone_restaurante.png'),
            ),
            title: const Text('Título da notificação',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            subtitle: const Text('Subtítulo da notificação'),
            trailing: const Text('14:00'),
            onTap: () {},
          ),
          const Divider(),
        ],
      )),
    );
  }
}
