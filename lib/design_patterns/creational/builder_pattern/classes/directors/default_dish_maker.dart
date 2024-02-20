import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class DefaultDishMaker implements DishMaker {
  DishBuilder builder = DishBuilder();

  /// ### Monta uma refeição padrão (sem sobremesa).
  @override
  ComposedMeal make() {
    ComposedMeal mealWithoutDessert =
        builder.makeMeal().includeBeverage().getMeal();
    builder.resetDish();
    return mealWithoutDessert;
  }
}
