import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class NeumorphicAuthButton extends StatefulWidget {
  final String number;
  final Function action;
  final Color? color;
  final bool? isVisible;

  const NeumorphicAuthButton({
    Key? key,
    required this.number,
    required this.action,
    this.color,
    this.isVisible,
  }) : super(key: key);

  @override
  State<NeumorphicAuthButton> createState() => _NeumorphicAuthButtonState();
}

class _NeumorphicAuthButtonState extends State<NeumorphicAuthButton> {
  /// ボタンの名称(数値)
  late final _number = widget.number;

  /// タップイベント
  late final _action = widget.action;

  /// ボタンの文字色
  late final _color = widget.color ?? AppColors.mainColor;

  /// タップイベント
  late final _isVisible = widget.isVisible ?? true;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _isVisible ? 1.0 : 0.0,
      child: NeumorphicButton(
        style: const NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
        padding: EdgeInsets.all(24.0.r),
        child: Text(
          _number,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _color,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          if (_isVisible) {
            _action(_number);
          }
        },
      ),
    );
  }
}
