import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class SmartHouseApp {
  Map<String, SmartHouseCommand> commands = {};

  void addCommand({required String key, required SmartHouseCommand command}) {
    if (commands.containsKey(key)) return print("Chave $key já existe!");
    commands[key] = command;
    print("Comando adicionado com sucesso à chave $key!");
  }

  void executeCommand(String key) {
    if (!commands.containsKey(key)) {
      return print("Nenhum comando encontrado para a chave '$key'!");
    }

    commands[key]!.execute();
  }

  void undoCommand(String key) {
    if (!commands.containsKey(key)) {
      return print("Nenhum comando encontrado para a chave '$key'!");
    }

    commands[key]!.undo();
  }
}
