import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class LightPowerCommand implements SmartHouseCommand {
  late SmartHouseLight _light;

  // Preciso de um receiver dentro de um comando
  LightPowerCommand(SmartHouseLight light) {
    _light = light;
  }

  @override
  void execute() => _light.turnOn();

  @override
  void undo() => _light.turnOff();
}
