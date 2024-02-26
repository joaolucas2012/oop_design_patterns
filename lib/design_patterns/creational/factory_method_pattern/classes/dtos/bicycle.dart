import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class Bicycle implements Vehicle {
  final String name;

  Bicycle(this.name);

  @override
  void pickUp(String customerName) {
    print("$name está buscando o $customerName");
  }

  @override
  stop() {
    print("$name parou");
  }

  @override
  String getName() => name;
}
