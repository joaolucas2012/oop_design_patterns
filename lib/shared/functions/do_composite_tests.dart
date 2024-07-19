import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

void doCompositeTests() {
  print("Iniciando testes do padrão COMPOSITE!\n");

  Product bike = Product("Bicicleta", 56.5);
  Product toy = Product("Brinquedo", 32.5);
  Product pen = Product("Caneta", 1.2);
  Product eraser = Product("Borracha", 2);
  Product cup = Product("Copo de porcelana", 3.4);

  List<Product> products = [bike, toy, pen, eraser];

  ComposedProduct store = ComposedProduct("Loja do João");
  ComposedProduct milkBox = ComposedProduct("Caixa de leite");

  for (int i = 0; i < 10; i++) {
    milkBox.add(Product("Leite", 7.8));
  }

  print(
    "${milkBox.getName()} possui um valor total de R\$ ${milkBox.getPrice().toStringAsFixed(2)}",
  );

  for (Product product in products) {
    print("Produto: ${product.getName()} -> ${product.getPrice()}");
    store.add(product);
  }

  store.add(milkBox);

  print(
    "A ${store.getName()} possui um valor agregado de R\$ ${store.getPrice().toStringAsFixed(2)} de acordo com seus itens.",
  );

  store.remove(eraser);
  store.remove(bike);

  print(
    "A ${store.getName()} possui um valor agregado de R\$ ${store.getPrice().toStringAsFixed(2)} de acordo com seus itens.",
  );

  print("Origem da ${store.getName()}: ${store.getParent()?.getName()}");
  print("Origem da ${milkBox.getName()}: ${milkBox.getParent()?.getName()}");
  print("Origem da ${bike.getName()}: ${bike.getParent()?.getName()}");
  print("Origem do ${cup.getName()}: ${cup.getParent()?.getName()}");

  print("\n--------------------------------------------------------\n");
}
