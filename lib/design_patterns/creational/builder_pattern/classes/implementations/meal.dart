import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

abstract class Meal implements MealComposite {
  final String name;
  late double _price;

  Meal(this.name, {required double price}) {
    _price = price;
  }

  @override
  double get price => _price;

  Map<String, dynamic> toMap() {
    return {"name": name, "price": price};
  }
}
