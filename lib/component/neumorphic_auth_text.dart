import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class NeumorphicAuthText extends StatelessWidget {
  final String? text;
  final bool? isRegister;

  const NeumorphicAuthText({
    Key? key,
    required this.text,
    this.isRegister,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      style: const NeumorphicStyle(
        depth: Dimens.embossDepth,
        color: AppColors.baseColor,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 16.w),
        child: Text(
          isRegister == true ? (text ?? '') : '＊',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: text != null ? AppColors.black : Colors.transparent,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
