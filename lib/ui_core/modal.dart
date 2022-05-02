import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:account_management_ledger/importer.dart';

class AppModal {
  final BuildContext context;

  const AppModal(
    this.context, {
    Key? key,
  });

  void _onchange() {}

  void showModal() {
    showCupertinoModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          body: Neumorphic(
            child: Container(
              color: AppColors.baseColor,
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.formFieldHorizontalPadding.w,
                vertical: Dimens.formFieldVerticalPadding.h,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(Icons.close, color: AppColors.black),
                      Image.asset('assets/images/ic_parts.png'),
                      const Icon(Icons.close, color: Colors.transparent),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  NeumorphicTextField(
                    label: Strings.serviceLabel,
                    icon: Icons.local_offer,
                    onChange: _onchange,
                  ),
                  SizedBox(height: 8.h),
                  NeumorphicTextField(
                    label: Strings.idLabel,
                    icon: Icons.face,
                    onChange: _onchange,
                  ),
                  SizedBox(height: 8.h),
                  NeumorphicTextField(
                    label: Strings.passwordLabel,
                    icon: Icons.lock,
                    onChange: _onchange,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
