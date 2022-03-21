import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/carrinho_model/carrinho_model.dart';
import '../models/carrinho_model/comanda_model.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pedido"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                ScopedModel.of<CartModel>(context).limparCarrinho();
                setState(() {});
              },
            ),
          ],
        ),
        body: ScopedModel.of<CartModel>(context, rebuildOnChange: true)
                .carrinho
                .isEmpty
            ? const Center(
                child: Text("Ainda não há itens selecionados  :("),
              )
            : Container(
                padding: EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: ScopedModel.of<CartModel>(context,
                              rebuildOnChange: true)
                          .total,
                      itemBuilder: (context, index) {
                        return ScopedModelDescendant<CartModel>(
                          builder: (context, child, model) {
                            return ListTile(
                              title: Text(model.carrinho[index].qty.toString() +
                                  " x    " +
                                  model.carrinho[index].titulo),
                              trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon:
                                          Icon(Icons.add, color: Colors.green),
                                      onPressed: () {
                                        model.atualizarPrato(
                                            model.carrinho[index],
                                            model.carrinho[index].qty + 1);
                                        setState(() {});
                                      },
                                    ),
                                    IconButton(
                                      icon:
                                          Icon(Icons.remove, color: Colors.red),
                                      onPressed: () {
                                        model.atualizarPrato(
                                            model.carrinho[index],
                                            model.carrinho[index].qty - 1);
                                        setState(() {});
                                      },
                                    ),
                                  ]),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, fixedSize: const Size(200, 50)),
                    child: const Text(
                      'ADICIONAR MAIS ITENS',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/order');
                    },
                  ),
                  Container(height: 100),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red, fixedSize: const Size(200, 50)),
                    child: const Text(
                      'CONFIRMAR PEDIDO',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {
                      ScopedModel.of<CartModel>(context).limparCarrinho();
                      Navigator.of(context).pushReplacementNamed('/order');
                      showAlertDialog(context);
                    },
                  ),
                ])));
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.popUntil(context, ModalRoute.withName('/login'));
      },
    );
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Pedido realizado com sucesso",
        style: TextStyle(color: Colors.green),
      ),
      content:
          const Text("Seu pedido foi encaminhado e já está sendo preparado"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
