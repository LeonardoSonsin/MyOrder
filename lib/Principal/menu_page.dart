import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../Cardapio/food.dart';
import '../models/carrinho_model/carrinho_model.dart';

class MenuPage extends StatefulWidget {

  MenuPage({Key key}) : super(key: key);
  @override
  State<MenuPage> createState() {
    return MenuPageState();
  }
}

class MenuPageState extends State<MenuPage> {
  List<Pratos> prato = [
    Pratos(
        id: 1,
        titulo: "Mussarela",
        descricao: "Molho de tomate e mussarela especial.",
        preco: 57.00,
        imgUrl: "https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285_960_720.png",
        qty: 1),
    Pratos(
        id: 2,
        titulo: "Frango catupiry",
        descricao: "Molho de tomate, frango desfiado e catupiry.",
        preco: 79.00,
        imgUrl: "https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285_960_720.png",
        qty: 1),
    Pratos(
        id: 3,
        titulo: "Marguerita",
        descricao: "Molho de tomate, mussarela especial, parmesão e manjericão.",
        preco: 64.00,
        imgUrl: "https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285_960_720.png",
        qty: 1),
    Pratos(
        id: 4,
        titulo: "Pepperoni",
        descricao:
        "Molho de tomate, mussarela especial e linguiça tipo pepperoni.",
        preco: 85.00,
        imgUrl: "https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285_960_720.png",
        qty: 1),
    Pratos(
        id: 5,
        titulo: "Calabresa",
        descricao:
        "Molho de tomate, calabresa artesanal, cebola e azeitonas pretas.",
        preco: 79.00,
        imgUrl: "https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285_960_720.png",
        qty: 1),
    Pratos(
        id: 6,
        titulo: "Água",
        descricao: "Água mineral",
        preco: 3.00,
        imgUrl: "https://http2.mlstatic.com/D_NQ_NP_2X_800831-MLU47587972258_092021-F.webp",
        qty: 1),
    Pratos(
        id: 7,
        titulo: "Refrigerante",
        descricao:
        "Refrigerante de cola.",
        preco: 5.00,
        imgUrl: "https://img2.gratispng.com/20180927/ju/kisspng-coca-cola-car-product-design-5baca128a41f25.6167852015380401046723.jpg",
        qty: 1),
    Pratos(
        id: 8,
        titulo: "Suco",
        descricao:
        "Suco natural de frutas.",
        preco: 7.00,
        imgUrl: "https://img2.gratispng.com/20180328/avq/kisspng-orange-juice-fizzy-drinks-cocktail-beer-natural-5abbf535ed7ac9.1427029515222674459727.jpg",
        qty: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cardápio'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(5.0),
        itemCount: prato.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            childAspectRatio: 1),
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
                return InkWell(
                  child: Card(
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.network(prato[index].imgUrl),
                        ),
                        Text(prato[index].titulo,
                            style:
                            TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Container(height: 5),
                        Text(prato[index].descricao,
                            textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 12)),
                        Text(
                          "\nR\$" + prato[index].preco.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodPage(prato: prato[index],)));
                  },
                );
              });
        },
      ),
    );
  }
}