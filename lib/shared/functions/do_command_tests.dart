import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

Future<void> doCommandTests() async {
  // RECEIVERS -> Lâmpadas da casa inteligente
  SmartHouseLight bedroomLight = SmartHouseLight("Luz do quarto");
  SmartHouseLight bathroomLight = SmartHouseLight("Luz do banheiro");

  // COMMANDS -> Comandos para as lâmpadas
  LightPowerCommand bedroomLightCommand = LightPowerCommand(bedroomLight);
  LightPowerCommand bathroomLightCommand = LightPowerCommand(bathroomLight);
  IncreaseLightCommand bedroomIncreaser = IncreaseLightCommand(bedroomLight);
  IncreaseLightCommand bathroomIncreaser = IncreaseLightCommand(bathroomLight);

  // INVOKER -> Controle da casa inteligente
  SmartHouseApp app = SmartHouseApp();
  app.addCommand(key: "bedroom_light", command: bedroomLightCommand);
  app.addCommand(key: "bathroom_light", command: bathroomLightCommand);
  app.addCommand(key: "bedroom_increaser", command: bedroomIncreaser);
  app.addCommand(key: "bathroom_increaser", command: bathroomIncreaser);

  // INVOKER EXECUTIONS -> Ativando botões do controle
  print("Iniciando testes do padrão COMMAND!\n");

  print("\n------- Teste luz do quarto: -------");
  app.executeCommand("bedroom_light");
  app.undoCommand("bedroom_light");
  for (int i = 0; i < 60; i++) {
    if (i > 52) {
      app.undoCommand("bedroom_increaser");
      continue;
    }
    app.executeCommand("bedroom_increaser");
  }

  print("\n------- Teste luz do banheiro: -------");
  app.executeCommand("bathroom_light");
  app.executeCommand("bathroom_light");
  app.undoCommand("bathroom_light");
  for (int i = 0; i < 20; i++) {
    if (i > 13) {
      app.undoCommand("bathroom_increaser");
      continue;
    }
    app.executeCommand("bathroom_increaser");
  }

  print("\n----------------------------\n");
}
