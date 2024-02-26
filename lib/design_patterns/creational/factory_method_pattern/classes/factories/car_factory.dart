import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class CarFactory extends VehicleFactory {
  @override
  Car getVehicle(String name) {
    return Car(name);
  }
}
