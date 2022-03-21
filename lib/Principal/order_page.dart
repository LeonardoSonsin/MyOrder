import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/carrinho_model/carrinho_model.dart';
import '../models/carrinho_model/comanda_model.dart';

class OrderPage extends StatefulWidget {
  OrderPage(
      {Key key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _OrderPageState();
  }
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Comanda"),
              automaticallyImplyLeading: false,
            ),
            body: ScopedModel.of<CartModel>(context, rebuildOnChange: true)
                    .carrinho
                    .isEmpty
                ? const Center(
                    child: Text("Ainda não há itens selecionados"),
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
                                  title: Text(model.carrinho[index].titulo),
                                  subtitle: Text(model.carrinho[index].qty
                                          .toString() +
                                      " x " +
                                      model.carrinho[index].preco.toString() +
                                      " = " +
                                      (model.carrinho[index].qty *
                                              model.carrinho[index].preco)
                                          .toString()),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          child: Text(
                            "Total: R\$ " +
                                ScopedModel.of<CartModel>(context,
                                        rebuildOnChange: false)
                                    .totalConta
                                    .toString() +
                                "",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Ir para pagamento"),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/pay');
                            },
                          ))
                    ])));
  }
}
