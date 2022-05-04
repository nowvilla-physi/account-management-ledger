import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeumorphicFloatingButton extends StatefulWidget {
  final IconData icon;
  final Function action;
  final Color? color;

  const NeumorphicFloatingButton({
    Key? key,
    required this.icon,
    required this.action,
    this.color,
  }) : super(key: key);

  @override
  State<NeumorphicFloatingButton> createState() =>
      _NeumorphicFloatingButtonState();
}

class _NeumorphicFloatingButtonState extends State<NeumorphicFloatingButton> {
  /// アイコン
  late final _icon = widget.icon;

  /// タップイベント
  late final _action = widget.action;

  /// アイコンの色
  late final _iconColor = widget.color ?? AppColors.mainColor;

  @override
  Widget build(BuildContext context) {
    return NeumorphicFloatingActionButton(
      style: const NeumorphicStyle(
        depth: Dimens.depth,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Icon(_icon, size: 24.h, color: _iconColor),
      onPressed: () {
        _action();
      },
    );
  }
}
