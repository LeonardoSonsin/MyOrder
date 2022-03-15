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
  Icon iconeDireita = const Icon(Icons.search_outlined);
  Widget barraPesquisa = const Text("Restaurantes");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: barraPesquisa,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: iconeDireita,
            onPressed: () {
              setState(() {
                if (iconeDireita.icon == Icons.search_outlined) {
                  iconeDireita = const Icon(Icons.cancel);
                  barraPesquisa = const ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Restaurante...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  iconeDireita = const Icon(Icons.search_outlined);
                  barraPesquisa = const Text('Restaurantes');
                }
              });
            },
          )
        ],
      ),
      body: const home_Body(),
    );
  }
}

class home_Body extends StatelessWidget {
  const home_Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 10),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Column(
                children: const <Widget>[
                  Icon(Icons.wallet_giftcard, color: Colors.white, size: 50),
                  Text('Cupons Disponíveis',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
          Container(height: 15),
          const Text('   Famosos no MyOrder',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Container(height: 10),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: [
                  InkWell(
                    child: Container(
                      height: 65,
                      width: 65,
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child:
                          Image.asset('assets/imagens/icone_restaurante.png'),
                    ),
                    onTap: () {},
                  ),
                  const Text("MyOrder"),
                ],
              ),
            ),
          ),
          Container(height: 15),
          const Text('   Lojas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Container(height: 10),
          Flexible(
            child: ListView.builder(
              itemCount: 15,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ListaRestaurante(),
            ),
          ),
        ],
      ),
    );
  }
}

class ListaRestaurante extends StatefulWidget {
  const ListaRestaurante({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => new Restaurante();
}

class Restaurante extends State<ListaRestaurante> {
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
      title: const Text('Restaurante MyOrder', style: TextStyle(fontSize: 15)),
      subtitle: const Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 14.0,
          ),
          children: <TextSpan>[
            TextSpan(text: '★ 4,9  ', style: TextStyle(color: Colors.amber)),
            TextSpan(text: '•  Pizzaria'),
            TextSpan(text: '\nAberto', style: TextStyle(color: Colors.green)),
            TextSpan(text: '  •  3,0 km'),
          ],
        ),
      ),
      trailing: IconButton(
        icon: Favorito
            ? Icon(Icons.favorite, color: Colors.red)
            : Icon(Icons.favorite_outline),
        onPressed: () {
          Favorito = !Favorito;
          setState(() {});
        },
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/restaurant');
      },
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
