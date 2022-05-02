import 'package:account_management_ledger/importer.dart';

class EqualValidator implements Validator<String> {
  final String? preValue;

  EqualValidator(this.preValue);

  @override
  bool validate(String value) {
    if (value == preValue) {
      return false;
    } else {
      return true;
    }
  }

  @override
  String getMessage() => Strings.equalValidatorMessage;
}
