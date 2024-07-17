import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

void doFactoryMethodTests() {
  print("Iniciando testes do padrão FACTORY METHOD!\n");

  // O código cliente agora está completamente desacoplado das classes concretas.
  List<String> customerNames = ["Joana", "João", "Diana", "Keli", "Dylan"];

  for (int i = 0; i < 5; i++) {
    Vehicle vehicle = getRandomVehicle();
    String customer = (customerNames..shuffle()).first;
    print("\nCliente: $customer");
    print("Carro: ${vehicle.getName()}");
    vehicle.pickUp(customer);
    vehicle.stop();
    CarFactory().pickUp(customerName: customer, vehicleName: "Uno Way").stop();
  }

  print("\n--------------------------------------------------------\n");
}

/// Uma função qualquer.
Vehicle getRandomVehicle() {
// Factories
  CarFactory carCreator = CarFactory();
  BicycleFactory bikeCreator = BicycleFactory();

  // Objetos criados pelas factories
  Car fusca = carCreator.getVehicle("Fusca");
  Car ferrari = carCreator.getVehicle("Ferrari");
  Bicycle caloi = bikeCreator.getVehicle("Bicicleta Caloi");

  List<Vehicle> vehicles = [fusca, ferrari, caloi];

  return (vehicles..shuffle()).first;
}
