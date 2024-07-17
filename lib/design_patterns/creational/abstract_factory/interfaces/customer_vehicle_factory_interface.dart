import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

abstract class CustomerVehicleFactory {
  Customer createCustomer(String customerName);
  Vehicle createVehicle(String vehicleName, String customerName);
}
