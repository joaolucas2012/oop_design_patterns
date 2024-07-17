import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class IndividualCustomerVehicleFactory implements CustomerVehicleFactory {
  @override
  IndividualCustomer createCustomer(String customerName) {
    return IndividualCustomer(name: customerName);
  }

  @override
  IndividualCar createVehicle(String vehicleName, String customerName) {
    IndividualCustomer customer = IndividualCustomer(name: customerName);
    return IndividualCar(vehicleName, customer);
  }
}
