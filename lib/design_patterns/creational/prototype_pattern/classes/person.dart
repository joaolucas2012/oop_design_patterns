import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class Person implements Prototype {
  String name;
  int age;
  List<Address> addresses = [];

  Person(this.name, this.age, this.addresses);

  set setName(String newName) => name = newName;
  set setAddresses(List<Address> newAddresses) => addresses = newAddresses;

  @override
  Person clone() {
    return Person(name, age, addresses.map((e) => e.clone()).toList());
  }

  @override
  String toString() {
    String addressessText = addresses.isEmpty
        ? ""
        : " Posso ser encontrado nos endereços:\n${addresses.map((e) => "* ${e.toString()}").toList().join("\n")}";

    return "Meu nome é $name, tenho $age anos.$addressessText";
  }

  void resetAddresses() => addresses.clear();

  void addAddress(Address address) {
    addresses.add(address);
  }
}
