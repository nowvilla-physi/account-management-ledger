import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class NeumorphicAuthTexts extends StatelessWidget {
  final String password;
  final bool? isRegister;

  const NeumorphicAuthTexts({
    Key? key,
    required this.password,
    this.isRegister,
  }) : super(key: key);

  String? _slicePassword(String password, int length) {
    if (password.length >= length) {
      return password.substring(length - 1, length);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        NeumorphicAuthText(
          text: _slicePassword(password, 1),
          isRegister: isRegister,
        ),
        SizedBox(width: Dimens.authTextHorizontalMargin.w),
        NeumorphicAuthText(
          text: _slicePassword(password, 2),
          isRegister: isRegister,
        ),
        SizedBox(width: Dimens.authTextHorizontalMargin.w),
        NeumorphicAuthText(
          text: _slicePassword(password, 3),
          isRegister: isRegister,
        ),
        SizedBox(width: Dimens.authTextHorizontalMargin.w),
        NeumorphicAuthText(
          text: _slicePassword(password, 4),
          isRegister: isRegister,
        ),
      ],
    );
  }
}
