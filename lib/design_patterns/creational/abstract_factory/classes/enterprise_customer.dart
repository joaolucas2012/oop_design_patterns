import 'package:oop_design_patterns/design_patterns/creational/abstract_factory/interfaces/customer_interface.dart';

class EnterpriseCustomer implements Customer {
  @override
  final String name;

  EnterpriseCustomer({required this.name});

  @override
  void getName() {
    print("O nome do cliente empresarial é $name.");
  }
}
