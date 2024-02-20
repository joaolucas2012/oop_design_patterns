class MongoDatabase {
  static final MongoDatabase _instance = MongoDatabase._internal();

  factory MongoDatabase() {
    return _instance;
  }

  MongoDatabase._internal();
}
