import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class Car implements Vehicle {
  final String name;

  Car(this.name);

  @override
  void pickUp(String customerName) {
    print("$name está buscando $customerName");
  }

  @override
  stop() {
    print("$name parou");
  }

  @override
  String getName() => name;
}
