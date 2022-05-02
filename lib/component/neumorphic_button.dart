import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class AppNeumorphicButton extends StatefulWidget {
  final String name;
  final Function action;
  final Account? account;
  final Color? color;

  const AppNeumorphicButton({
    Key? key,
    required this.name,
    required this.action,
    this.account,
    this.color,
  }) : super(key: key);

  @override
  State<AppNeumorphicButton> createState() => _AppNeumorphicButtonState();
}

class _AppNeumorphicButtonState extends State<AppNeumorphicButton> {
  /// ボタン名称
  late final _name = widget.name;

  /// アカウント情報
  late final _account = widget.account;

  /// タップイベント
  late final _action = widget.action;

  /// ボタンの色
  late final _color = widget.color;

  /// TextFormFieldのボーター
  final border = const UnderlineInputBorder(
    borderSide: BorderSide(color: AppColors.baseColor),
  );

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
          if (_account == null) {
            _action();
          } else {
            _action(_account!.uuid);
          }
        },
      ),
    );
  }
}
