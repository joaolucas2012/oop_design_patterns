import 'package:oop_design_patterns/design_patterns/command_pattern/classes/smart_house_light.dart';
import 'package:oop_design_patterns/design_patterns/command_pattern/interfaces/smart_house_command.dart';

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
