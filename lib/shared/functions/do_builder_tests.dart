import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

/// ### Testa o padrão Builder
void doBuilderTests() {
  print("Iniciando testes do padrão BUILDER!\n");

  // Director que cria refeições simples com builder.
  SimpleDishMaker simpleDishMaker = SimpleDishMaker();
  // Director que cria refeições completas com builder.
  CompleteDishMaker completeDishMaker = CompleteDishMaker();
  // Director que cria refeições padrão com builder.
  DefaultDishMaker defaultDishMaker = DefaultDishMaker();

  // Construindo refeição sem sobremesa
  ComposedMeal mealWithoutDessert = defaultDishMaker.make();
  print("Refeição sem sobremesa: ${mealWithoutDessert.toString()}");
  print("Preço: ${mealWithoutDessert.price}");

  // Construindo refeição completa
  ComposedMeal mainDish = completeDishMaker.make();
  print("Refeição completa: ${mainDish.toString()}");
  print("Preço: ${mainDish.price}");

  // Construindo refeição simples sem bebida
  ComposedMeal simpleDish = simpleDishMaker.make();
  print("Refeição simples: ${simpleDish.toString()}");
  print("Preço: ${simpleDish.price}");

  print("\n--------------------------------------------------------\n");
}
