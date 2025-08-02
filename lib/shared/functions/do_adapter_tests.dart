import 'package:oop_design_patterns/design_patterns/structural/adapter/classes/email_validator_adapter.dart';

/// ### Testa o padrão Adapter
void doAdapterTests() {
  print("\nIniciando testes do padrão ADAPTER!\n");

  final validator = EmailValidatorAdapter();

  List<String> emails = [
    "ribeirojoaolucas68@gmail.com",
    "tst@",
    "texto qualquer",
    "26263373",
    "d2019005856@unifei.edu.br"
  ];

  for (String email in emails) {
    bool isValid = validator.isValid(email);
    print("O email $email está ${isValid ? 'válido' : 'inválido'}!");
  }

  print("\n--------------------------------------------------------\n");
}
