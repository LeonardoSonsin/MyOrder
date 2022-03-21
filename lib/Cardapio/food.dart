import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/carrinho_model/carrinho_model.dart';

class FoodPage extends StatelessWidget {
  final Pratos prato;

  const FoodPage({Key key, @required this.prato}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: ScopedModelDescendant<CartModel>(
        builder: (context, child, model) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      child: Image.network(prato.imgUrl),
                    ),
                  ),
                  Text(prato.titulo,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Container(height: 10),
                  Text(prato.descricao,
                      style: TextStyle(fontSize: 18)),
                  Container(height: 15),
                  Text('R\u0024' + ' ' + prato.preco.toString(),
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold)),
                  Container(height: 50),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, fixedSize: const Size(300, 50)),
                      child: const Text(
                        'Adicionar',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      onPressed: () {
                        model.adicionarPrato(prato);
                        Navigator.of(context).pushReplacementNamed('/cart');
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
