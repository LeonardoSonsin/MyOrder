import 'package:flutter/material.dart';

class RegisterPage3 extends StatefulWidget {
  const RegisterPage3({Key key}) : super(key: key);

  @override
  _RegisterPage3State createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 15),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Qual seu nome e sobrenome?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      labelText: 'Nome', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      labelText: 'Sobrenome', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Seu nome completo ajuda o restaurante a saber quem está pedindo.',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Ao continuar, você concorda com os '),
                      TextSpan(
                          text: 'Termos de Uso ',
                          style: TextStyle(color: Colors.red)),
                      TextSpan(text: 'e a '),
                      TextSpan(
                          text: 'Política de Privacidade',
                          style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, fixedSize: const Size(320, 40)),
                  child: const Text(
                    'Criar conta',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/login'));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
