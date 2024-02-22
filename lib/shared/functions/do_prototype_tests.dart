import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

Future<void> doPrototypeTests() async {
  print("Iniciando testes do padrão PROTOTYPE!\n");

  Person joao = Person("João Lucas", 23, []);

  Person joaoOtavio = joao.clone()
    ..addAddress(
      Address("Rua Maria da Conceição Ribeiro", 15, "Divinópolis"),
    );

  Person keli = joaoOtavio.clone();
  keli.name = "Keli Renata";
  keli.addresses = [
    Address("Rua Mar Morto", 17, "Itajubá"),
    Address("Rua Gina Carano", 65, "Varginha"),
  ];

  Person gustavo = keli.clone()
    ..resetAddresses()
    ..name = "Gustavo Silva";

  print("\n${joao.toString()}");
  print("\n${joaoOtavio.toString()}");
  print("\n${keli.toString()}");
  print("\n${gustavo.toString()}");

  print("\n--------------------------------------------------------\n");
}
