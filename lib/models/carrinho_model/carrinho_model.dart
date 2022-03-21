import 'package:scoped_model/scoped_model.dart';

class CartModel extends Model {
  List<Pratos> carrinho = [];
  double totalConta = 0;

  int get total => carrinho.length;

  void adicionarPrato(product) {
    int index = carrinho.indexWhere((i) => i.id == product.id);
    print(index);
    if (index != -1)
      atualizarPrato(product, product.qty + 1);
    else {
      carrinho.add(product);
    }
    calcularTotal();
  }

  void removerPrato(product) {
    int index = carrinho.indexWhere((i) => i.id == product.id);
    carrinho[index].qty = 1;
    carrinho.removeWhere((item) => item.id == product.id);
    calcularTotal();
  }

  void atualizarPrato(product, qty) {
    int index = carrinho.indexWhere((i) => i.id == product.id);
    carrinho[index].qty = qty;
    if (carrinho[index].qty == 0)
      removerPrato(product);
    calcularTotal();
  }

  void limparCarrinho() {
    carrinho.forEach((f) => f.qty = 1);
    carrinho = [];
    calcularTotal();
  }

  void calcularTotal() {
    totalConta = 0;
    carrinho.forEach((f) {
      totalConta += f.preco * f.qty;
    });
  }
}

class Pratos {
  int id;
  String titulo;
  String descricao;
  String imgUrl;
  double preco;
  int qty;

  Pratos({this.id, this.titulo, this.descricao, this.preco, this.qty, this.imgUrl});
}
