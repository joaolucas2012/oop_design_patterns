class Singleton {
  static final Singleton _instance = Singleton._internal();

  factory Singleton() {
    return _instance;
  }

  Singleton._internal();

  static Singleton get instance => _instance;

  String getCurrentDate() {
    return DateTime.now().toIso8601String();
  }
}
