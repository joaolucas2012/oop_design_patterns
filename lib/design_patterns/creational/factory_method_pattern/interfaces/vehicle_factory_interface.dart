import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

abstract class VehicleFactory {
  // Isso é um factory method. As subclasses vão decidir que classe instanciar.
  Vehicle getVehicle(String name);

  Vehicle pickUp({required String customerName, required String vehicleName}) {
    Vehicle car = getVehicle(vehicleName);
    car.pickUp(customerName);
    return car;
  }
}
