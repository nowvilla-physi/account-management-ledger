import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class NeumorphicAuthTexts extends StatelessWidget {
  final String password;

  const NeumorphicAuthTexts({
    Key? key,
    required this.password,
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
        NeumorphicAuthText(text: _slicePassword(password, 1)),
        SizedBox(width: Dimens.authTextHorizontalMargin.w),
        NeumorphicAuthText(text: _slicePassword(password, 2)),
        SizedBox(width: Dimens.authTextHorizontalMargin.w),
        NeumorphicAuthText(text: _slicePassword(password, 3)),
        SizedBox(width: Dimens.authTextHorizontalMargin.w),
        NeumorphicAuthText(text: _slicePassword(password, 4)),
      ],
    );
  }
}
