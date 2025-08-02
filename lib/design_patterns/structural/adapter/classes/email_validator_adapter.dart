import 'package:email_validator/email_validator.dart';
import 'package:oop_design_patterns/design_patterns/structural/adapter/interfaces/validator.dart';

class EmailValidatorAdapter implements Validator<String> {
  @override
  bool isValid(String email) {
    return EmailValidator.validate(email);
  }
}
