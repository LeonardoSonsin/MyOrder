import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/carrinho_model/carrinho_model.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key key}) : super(key: key);

  @override
  State<PayPage> createState() {
    return PayPageState();
  }
}

class PayPageState extends State<PayPage> {
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
      title: const Text('Pagamentos'),
    );
  }
}

class ListaNotificacoes extends StatelessWidget {
  const ListaNotificacoes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey)
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minha carteira',
                  style: TextStyle(fontSize: 15.0),
                ),
                Container(
                  height: 15,
                ),
                Text('Saldo disponível', style: TextStyle(fontSize: 12.0)),
                Text(
                  String.fromCharCodes(
                    Runes('R\u0024 0,00'),
                  ),
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Formas de pagamento',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                Container(height: 10),
                Row(
                  children: [InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(9.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.add, color: Colors.red,),
                          Container(height: 20),
                          Text(
                            'Cadastrar',
                          ),
                          Text(('Novo cartão'),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                    },
                  )],
                ),
                Container(height: 30),
                Text(
                  'Outros serviços',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                Container(height: 10),
                Row(
                  children: [InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.credit_score, color: Colors.red),
                        ],
                      ),
                    ),
                    onTap: () {
                    },
                  ),
                    Container(width: 15),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.tag_faces_outlined, color: Colors.red),
                          ],
                        ),
                      ),
                      onTap: () {
                      },
                    ),
                    Container(width: 15),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.monetization_on_outlined, color: Colors.red),
                          ],
                        ),
                      ),
                      onTap: () {
                      },
                    ),
                    Container(width: 15),
                    InkWell(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.work_outline, color: Colors.red),
                          ],
                        ),
                      ),
                      onTap: () {
                      },
                    ),
                  ],
                ),
                Container(height: 100),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red, fixedSize: const Size(300, 50)),
                    child: const Text(
                      'Confirmar Pagamento',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {
                      ScopedModel.of<CartModel>(context).limparCarrinho();
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
