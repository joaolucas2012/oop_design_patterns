import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class EnterpriseCustomerVehicleFactory implements CustomerVehicleFactory {
  @override
  EnterpriseCustomer createCustomer(String customerName) {
    return EnterpriseCustomer(name: customerName);
  }

  @override
  EnterpriseCar createVehicle(String vehicleName, String customerName) {
    EnterpriseCustomer customer = EnterpriseCustomer(name: customerName);
    return EnterpriseCar(vehicleName, customer);
  }
}
