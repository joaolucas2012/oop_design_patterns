// ignore_for_file: depend_on_referenced_packages

import 'package:oop_design_patterns/design_patterns/structural/composite/interfaces/product_component_interface.dart';

class ComposedProduct extends ProductComponent {
  final String _name;
  double _price = 0;
  List<ProductComponent> products = [];

  ComposedProduct(
    this._name, {
    super.parent,
  });

  @override
  String getName() => _name;

  @override
  double getPrice() {
    if (products.isNotEmpty) {
      _price = products
          .map((prod) => prod.getPrice())
          .toList()
          .reduce((current, next) => current + next);
    } else {
      _price = 0;
    }

    return _price;
  }

  @override
  ProductComponent? getParent() => parent;

  @override
  void add(ProductComponent product) {
    product.setParent = this;
    products.add(product);
    print("Produto ${product.getName()} adicionado com sucesso a $_name!");
  }

  @override
  void remove(ProductComponent product) {
    if (products.contains(product)) {
      products.remove(product);
      print("Produto ${product.getName()} removido!");
    } else {
      print("Produto ${product.getName()} não encontrado!");
    }
  }
}
