import 'package:oop_design_patterns/design_patterns/creational/abstract_factory/interfaces/customer_interface.dart';

class IndividualCustomer implements Customer {
  @override
  final String name;

  IndividualCustomer({required this.name});

  @override
  void getName() {
    print("O nome do cliente individual é $name.");
  }
}
