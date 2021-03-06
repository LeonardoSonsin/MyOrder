import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key key}) : super(key: key);

  @override
  State<NotificationsPage> createState() {
    return _NotificationsPageState();
  }
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Card(
            child: ListView.builder(
              itemBuilder: (context, index) => MyListTile(),
            )),
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
      title: const Text('Notificações'),
    );
  }
}

class MyListTile extends StatefulWidget {
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool Lido = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Lido ? Colors.white : Colors.black26,
      leading: SizedBox(
        width: 50,
        height: 50,
        child: Image.asset('assets/imagens/icone_restaurante.png'),
      ),
      title: const Text('Título da notificação',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      subtitle: const Text('Subtítulo da notificação'),
      trailing: const Text('14:00'),
      onTap: () {Lido = !Lido;
      setState(() {
      });},
    );
  }
}