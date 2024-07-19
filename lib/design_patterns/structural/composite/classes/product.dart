import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class Product extends ProductComponent {
  final String _name;
  final double _price;

  Product(
    this._name,
    this._price, {
    super.parent,
  });

  @override
  String getName() => _name;

  @override
  double getPrice() => _price;

  @override
  ProductComponent? getParent() => parent;
}
