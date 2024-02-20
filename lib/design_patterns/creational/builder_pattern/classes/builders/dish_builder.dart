import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class DishBuilder implements MealBuilder {
  // Composite para compor a caixa de refeição completa
  ComposedMeal _mealBox = ComposedMeal();

  @override
  DishBuilder includeBeverage() {
    _mealBox.add([Beverage("Coca-cola", price: 6)]);
    return this;
  }

  @override
  DishBuilder includeDessert() {
    _mealBox.add([Dessert("Bolo de morango", price: 13)]);
    return this;
  }

  @override
  DishBuilder makeMeal() {
    Rice rice = Rice("Arroz Império", price: 20);
    Beans beans = Beans("Feijão Império", price: 15);
    Meat meat = Meat("Carne de frango", price: 35);

    _mealBox.add([rice, beans, meat]);
    return this;
  }

  /// ### Zera todo o builder, permitindo que seja usado para criar uma nova refeição.
  DishBuilder resetDish() {
    _mealBox = ComposedMeal();
    return this;
  }

  /// ### Retorna a refeição final montada.
  ComposedMeal getMeal() {
    return _mealBox;
  }
}
