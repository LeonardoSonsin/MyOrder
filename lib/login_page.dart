import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        camposTelaLogin(),
      ],
    ));
  }

  Widget camposTelaLogin() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/imagens/logo.png'),
              ),
              Container(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FontAwesomeIcons.facebook,
                      color: Colors.blue, size: 40.0),
                  Container(width: 50),
                  const Icon(FontAwesomeIcons.google,
                      color: Colors.black, size: 40.0),
                  Container(width: 50),
                  const Icon(FontAwesomeIcons.apple,
                      color: Colors.black, size: 40.0),
                ],
              ),
              Container(height: 30),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 15),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            labelText: 'Email ou número de telefone',
                            border: OutlineInputBorder()),
                      ),
                      const Divider(),
                      TextField(
                        onChanged: (text) {
                          senha = text;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: 'Senha', border: OutlineInputBorder()),
                      ),
                      Container(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            fixedSize: const Size(320, 50)),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          /*if (email == 'myorder@myorder.com' && senha == '123')*/
                          Navigator.of(context).pushReplacementNamed('/home');
                        },
                      ),
                      TextButton(
                        child: const Center(
                          child: Text('Esqueceu a senha?',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.red)),
                        ),
                        onPressed: () {},
                      ),
                      Container(height: 20),
                      const Divider(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            fixedSize: const Size(150, 50)),
                        child: const Text(
                          'Criar nova conta',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/register1');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
