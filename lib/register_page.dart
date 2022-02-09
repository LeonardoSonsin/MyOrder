import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Card(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Nome Completo', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'E-mail', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Telefone', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/');
                    },
                    child: Container(
                        width: double.infinity, child: Text('Confirmar', textAlign: TextAlign.center,))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
