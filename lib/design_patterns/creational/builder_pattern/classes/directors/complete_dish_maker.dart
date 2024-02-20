import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class CompleteDishMaker implements DishMaker {
  DishBuilder builder = DishBuilder();

  /// ### Monta uma refeição completa.
  @override
  ComposedMeal make() {
    ComposedMeal mainDish =
        builder.makeMeal().includeBeverage().includeDessert().getMeal();
    builder.resetDish();
    return mainDish;
  }
}
