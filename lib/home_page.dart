import 'package:app1/app_controller.dart';
import 'package:app1/settings.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //Cria a estrutura de menu esquerdo sobre tela sozinho
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              /*ClipRRect(borderRadius: BorderRadius.circular(40), child: */
              currentAccountPicture:
                  Image.asset('assets/imagens/logo.png') /*)*/,
              accountName: Text('Usuário Teste'),
              accountEmail: Text('myorder@hotmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Minha conta'),
              subtitle: Text('Informações da sua conta'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              subtitle: Text('Minhas configurações'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Suporte'),
              subtitle: Text('Contate nossa equipe'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.arrow_back_ios),
              title: Text('Sair'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Cardápio - Donna Oliva'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Card(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
            child:  ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  child: FlatButton(
                    child: Text('PIZZAS', style: TextStyle(fontSize: 30)),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: FlatButton(
                    child: Text('CALZONES', style: TextStyle(fontSize: 30)),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: FlatButton(
                    child: Text('SOBREMESAS', style: TextStyle(fontSize: 30)),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: FlatButton(
                    child: Text('BEBIDAS', style: TextStyle(fontSize: 30)),
                    onPressed: () {},
                  ),
                ),
              ],
            )
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
