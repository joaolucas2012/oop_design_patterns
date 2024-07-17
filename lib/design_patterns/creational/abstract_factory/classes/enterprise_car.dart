import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class EnterpriseCar implements Vehicle {
  final String name;
  final EnterpriseCustomer customer;

  EnterpriseCar(this.name, this.customer);

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
