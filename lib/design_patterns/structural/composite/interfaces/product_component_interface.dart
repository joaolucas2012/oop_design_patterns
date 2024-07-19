import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

abstract class ProductComponent {
  ProductComponent? parent;

  ProductComponent({this.parent});

  String getName();
  double getPrice();
  ProductComponent? getParent();
  void add(ProductComponent product) {}
  void remove(ProductComponent product) {}

  set setParent(ComposedProduct newParent) {
    parent = newParent;
  }
}
