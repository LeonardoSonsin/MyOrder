/*import 'package:app1/models/carrinho_model/carrinho_model.dart';

class OrderModel extends CartModel {
  List<PratosConfirmados> comanda = [];
  double totalConta = 0;

  int get total => comanda.length;

  void calcularTotal() {
    comanda.forEach((f) {
      totalConta += f.preco * f.qty;
    });
  }

  void adicionarPratosComanda(product) {
    carrinho.forEach((f) {
      comanda.add(product);
    });
    calcularTotal();
  }
}

class PratosConfirmados {
  int id;
  String titulo;
  String descricao;
  String imgUrl;
  double preco;
  int qty;

  PratosConfirmados({this.id, this.titulo, this.descricao, this.preco, this.qty, this.imgUrl});
}
*/