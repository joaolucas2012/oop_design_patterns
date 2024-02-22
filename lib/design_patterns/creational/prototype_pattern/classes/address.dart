import 'package:oop_design_patterns/shared/dependencies/dependencies.dart';

class Address implements Prototype {
  String street;
  int number;
  String city;

  Address(this.street, this.number, this.city);

  @override
  Address clone() {
    return Address(street, number, city);
  }

  @override
  String toString() {
    return "$street, $number - $city";
  }
}
