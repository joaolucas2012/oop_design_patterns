import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class BicycleFactory extends VehicleFactory {
  @override
  Bicycle getVehicle(String name) {
    return Bicycle(name);
  }
}
