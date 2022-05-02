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

  /// [type]に応じたボトムシートを表示する
  void showModal(OpenType type) {
    showCupertinoModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          body: Neumorphic(
            child: Container(
              color: AppColors.baseColor,
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.formFieldHorizontalPadding.w,
                vertical: Dimens.bottomSheetVerticalPadding.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  NeumorphicButton(
                    style: const NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.mainColor,
                    ),
                    onPressed: () {
                      _dismiss();
                    },
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
                  SizedBox(height: 32.h),
                  Center(
                    child: _switchAppNeumorphicButton(type),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// ボトムシートを閉じる
  void _dismiss() {
    Navigator.pop(context);
  }

  void _onchange() {}

  /// [type]によって表示するボタンを切り替える
  Widget _switchAppNeumorphicButton(OpenType type) {
    switch (type) {
      case OpenType.add:
        return AppNeumorphicButton(
          name: Strings.addButton,
          action: _addAccount,
        );
      case OpenType.edit:
        return AppNeumorphicButton(
          name: Strings.updateButton,
          action: _updateAccount,
        );
    }
  }

  void _addAccount() {}

  void _updateAccount() {}
}
