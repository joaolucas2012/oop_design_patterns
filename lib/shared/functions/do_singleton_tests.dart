import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

/// ### Testa o padrão Singleton
void doSingletonTests() {
  print("\nIniciando testes do padrão SINGLETON!\n");

  Singleton instance1 = Singleton.instance;
  Singleton instance2 = Singleton.instance;

  print(
    "Verificando se as 2 instâncias criadas são iguais:\nResposta: ${instance1 == instance2}",
  );
  print(
    "Testando método:\nResultado da chamada: ${instance1.getCurrentDate()}",
  );

  MongoDatabase firstMongo = MongoDatabase();
  List<MongoDatabase> singletons = List.filled(10, MongoDatabase());

  print(
    "\nChecando se todas as 10 instâncias da Singleton na lista são iguais:",
  );

  print("Se todas as 10 instâncias forem iguais, a lista só terá true");
  print(singletons.map((e) => e == firstMongo).toList());
  print(
    "Hashcodes das 10 instâncias:\n${singletons.map((e) => e.hashCode).toList()}",
  );

  print("\n--------------------------------------------------------\n");
}
