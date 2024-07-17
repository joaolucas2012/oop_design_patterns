import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class IncreaseLightCommand implements SmartHouseCommand {
  late SmartHouseLight _light;

  IncreaseLightCommand(SmartHouseLight light) {
    _light = light;
  }

  @override
  void execute() => _light.increaseIntensity();

  @override
  void undo() => _light.decreaseIntensity();
}
