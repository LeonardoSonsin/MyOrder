import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key key}) : super(key: key);

  @override
  State<FoodPage> createState() {
    return FoodPageState();
  }
}

class FoodPageState extends State<FoodPage> {
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
            const Text('   Título do prato',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Container(height: 10),
            const Text('    Descrição completa sobre o prato',
                style: TextStyle(fontSize: 18, color: Colors.black38)),
            Container(height: 15),
            const Text('    R\u0024 59,90',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            Container(height: 20),
            const Text('    Alguma observação?',
                style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: 'Ex: Tirar a cebola, molho à parte, etc.',
                    border: OutlineInputBorder()),
              ),
            ),
            Container(height: 20),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text('-  1  +',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      fixedSize: const Size(200, 50)),
                  child: const Text(
                    'Adicionar',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                  },
                ),
              ],
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
