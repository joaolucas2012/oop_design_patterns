import 'package:oop_design_patterns/design_patterns/creational/abstract_factory/factories/enterprise_customer_vehicle_factory.dart';
import 'package:oop_design_patterns/design_patterns/creational/abstract_factory/factories/individual_customer_vehicle_factory.dart';
import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

void doAbstractFactoryTests() {
  final enterpriseFactory = EnterpriseCustomerVehicleFactory();
  final individualFactory = IndividualCustomerVehicleFactory();

  // Testes da factory de objetos empresariais.
  EnterpriseCar car = enterpriseFactory.createVehicle("Ferrari", "Jonas Bento");
  car.getName();
  car.pickUp("Jessica");
  car.stop();

  EnterpriseCustomer customer = enterpriseFactory.createCustomer("Jonas Bento");
  customer.getName();

  // Testes da factory de objetos individuais.
  IndividualCar car2 = individualFactory.createVehicle(
    "Brasília",
    "Tomas Luan",
  );

  car2.getName();
  car2.pickUp("Jesebel");
  car2.stop();

  IndividualCustomer customer2 = individualFactory.createCustomer("Tomas Luan");
  customer2.getName();

  print("\n--------------------------------------------------------\n");
}
