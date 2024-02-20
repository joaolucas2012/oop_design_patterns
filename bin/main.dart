import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

Future<void> main(List<String> args) async {
  // Teste do padrão Command //
  await doCommandTests();

  // Teste do padrão Singleton //
  await doSingletonTests();
}
