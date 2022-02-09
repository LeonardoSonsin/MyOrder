import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = ""; //Criação da variável
  String senha = ""; //Criação da variável

  Widget _body(){
    return SingleChildScrollView(
      //Usado para o teclado não ficar em cima do botão de Login
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //Usado para o app se adequar a tela do smartphone do usuário
        child: Padding(
          padding: const EdgeInsets.all(8.0), //Margem da tela
          child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/imagens/logo.png'),
            ),
            Container(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),//EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      //Teclado em formato de email
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      obscureText: true, //Texto em formato de senha (****)
                      decoration: InputDecoration(
                          labelText: 'Senha', border: OutlineInputBorder()),
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        child: Text('Esqueci minha senha', textAlign: TextAlign.right,),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                        onPressed: () {
                          /*if (email == 'myorder@hotmail.com' && senha == '123')*/
                            Navigator.of(context).pushReplacementNamed('/home');
                        },
                        child: Container(
                            width: double.infinity, child: Text('Entrar', textAlign: TextAlign.center,))),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text('Cadastre-se'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( //Empilha Widgets (O primeiro fica embaixo do segundo ...)
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/imagens/background.jpg', fit: BoxFit.cover)),  //BACKGROUND
          Container(
            color: Colors.black.withOpacity(0.3)
          ), // MÁSCARA
          _body(), //TELA LOGIN
        ],
      )
    );
  }
}
