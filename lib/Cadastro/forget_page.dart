import 'package:flutter/material.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({Key key}) : super(key: key);

  @override
  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar senha'),
      ),
      body: Stack(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 15),
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/imagens/forget_password.png'),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Problemas para entrar?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Insira o seu nome de usuário ou e-mail e enviaremos um link para você voltar a acessar a sua conta.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Nome de usuário ou E-mail',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, fixedSize: const Size(320, 40)),
                  child: const Text(
                    'Confirmar',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    showAlertDialog(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {Navigator.popUntil(context, ModalRoute.withName('/login'));
      },
    );
    AlertDialog alert = AlertDialog(
      title: const Text(
        "E-mail enviado com sucesso",
        style: TextStyle(color: Colors.green),
      ),
      content: const Text("Verifique a sua caixa de correio e prossiga com os próximos passos para redefinir a sua senha."),
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
