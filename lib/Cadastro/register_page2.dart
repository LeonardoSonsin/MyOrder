import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({Key key}) : super(key: key);

  @override
  _RegisterPage2State createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  final maskFormatter = MaskTextInputFormatter(mask: '+55 (##) #####-####');

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
                    'Qual o número do seu celular?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      labelText: 'Celular', border: OutlineInputBorder()),
                  inputFormatters: [maskFormatter],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Informações sobre seus pedidos serão enviadas para este número.',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Como deseja receber o código?',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, fixedSize: const Size(320, 40)),
                  child: const Text(
                    'Receber por WhatsApp',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register3');
                  },
                ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, fixedSize: const Size(320, 40),
                      side: const BorderSide(color: Colors.red)),
                    child: const Text(
                      'Receber por SMS',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/register3');
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
