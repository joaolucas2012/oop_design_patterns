import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

Future<void> main(List<String> args) async {
  await doCommandTests();
  await doSingletonTests();
  await doBuilderTests();
}
