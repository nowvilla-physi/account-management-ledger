import 'package:account_management_ledger/importer.dart';

class RequiredValidator implements Validator<String?> {
  @override
  bool validate(String? value) {
    // null check.
    if (value == null) {
      return false;
    }

    // empty string check.
    if (value.trim().isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  @override
  String getMessage() => Strings.requiredValidatorMessage;
}
