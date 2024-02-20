import 'dart:convert';

import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class ComposedMeal implements MealComposite {
  List<Meal> meals = [];

  @override
  double get price => meals.map((m) => m.price).toList().reduce(
        (current, next) => current + next,
      );

  void add(List<Meal> newMeals) {
    meals.addAll(newMeals);
  }

  @override
  String toString() {
    return jsonEncode(meals.map((e) => e.toMap()).toList());
  }
}
