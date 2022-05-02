import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class AppNeumorphicButton extends StatefulWidget {
  final String name;
  final Function action;
  final Function? validate;
  final Account? account;
  final Color? color;

  const AppNeumorphicButton({
    Key? key,
    required this.name,
    required this.action,
    this.validate,
    this.account,
    this.color,
  }) : super(key: key);

  @override
  State<AppNeumorphicButton> createState() => _AppNeumorphicButtonState();
}

class _AppNeumorphicButtonState extends State<AppNeumorphicButton> {
  /// ボタン名称
  late final _name = widget.name;

  /// タップイベント
  late final _action = widget.action;

  /// バリデーション
  late final _validate = widget.validate;

  /// アカウント情報
  late final _account = widget.account;

  /// ボタンの色
  late final _color = widget.color;

  /// TextFormFieldのボーター
  final border = const UnderlineInputBorder(
    borderSide: BorderSide(color: AppColors.baseColor),
  );

  /// snackbar
  late final _snackbar = AppSnackbar(context);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.6,
      child: NeumorphicButton(
        style: const NeumorphicStyle(
          boxShape: NeumorphicBoxShape.stadium(),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text(
          _name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _color ?? AppColors.mainColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          if (_validate == null) {
            _action(_account!.uuid);
            return;
          }

          final Result<bool, String> result = _validate!(_account);
          result.when(
            success: (bool isValid) {
              _account == null ? _action() : _action(_account!.uuid);
            },
            failure: (String message) {
              _snackbar.showValidatedSnackbar(message);
            },
          );
        },
      ),
    );
  }
}
