import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    'Qual o seu e-mail?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'E-mail', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, fixedSize: const Size(320, 40)),
                  child: const Text(
                    'Próximo',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register2');
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
