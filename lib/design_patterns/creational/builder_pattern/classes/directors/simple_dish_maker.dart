import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class SimpleDishMaker implements DishMaker {
  DishBuilder builder = DishBuilder();

  /// ### Monta uma refeição simples (sem bebida).
  @override
  ComposedMeal make() {
    ComposedMeal simpleDish = builder.makeMeal().getMeal();
    builder.resetDish();
    return simpleDish;
  }
}
