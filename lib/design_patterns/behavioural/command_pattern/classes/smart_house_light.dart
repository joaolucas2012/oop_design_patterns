class SmartHouseLight {
  final String name;
  late bool _isOn;
  late int _intensity;

  SmartHouseLight(this.name) {
    _isOn = false;
    _intensity = 50;
  }

  String getPowerStatus() {
    return _isOn ? "ON" : "OFF";
  }

  bool turnOn() {
    _isOn = true;
    print("$name agora está ${getPowerStatus()}");
    return _isOn;
  }

  bool turnOff() {
    _isOn = false;
    print("$name agora está ${getPowerStatus()}");
    return _isOn;
  }

  int increaseIntensity() {
    if (_intensity == 100) {
      print("$name já está na maior intensidade: 100!");
      return 100;
    }

    _intensity += 1;
    print("$name agora está na intensidade $_intensity!");
    return _intensity;
  }

  int decreaseIntensity() {
    if (_intensity == 0) {
      print("$name já está na menor intensidade: 0!");
      return 0;
    }

    _intensity -= 1;
    print("$name agora está na intensidade $_intensity!");
    return _intensity;
  }
}
