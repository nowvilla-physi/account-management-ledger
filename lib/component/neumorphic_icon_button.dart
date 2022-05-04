import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeumorphicIconButton extends StatefulWidget {
  final IconData icon;
  final Function action;
  final Color? color;
  final double? padding;
  final double? marginLeft;
  final double? marginRight;

  const NeumorphicIconButton({
    Key? key,
    required this.icon,
    required this.action,
    this.color,
    this.padding,
    this.marginLeft,
    this.marginRight,
  }) : super(key: key);

  @override
  State<NeumorphicIconButton> createState() => _NeumorphicIconButtonState();
}

class _NeumorphicIconButtonState extends State<NeumorphicIconButton> {
  /// アイコン
  late final _icon = widget.icon;

  /// タップイベント
  late final _action = widget.action;

  /// アイコンの色
  late final _iconColor = widget.color ?? AppColors.mainColor;

  /// パディング
  late final _padding = widget.padding ?? Dimens.neumorphicIconButtonAllPadding;

  /// マージン
  late final _marginLeft = widget.marginLeft;

  /// マージン
  late final _marginRight = widget.marginRight;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      style: const NeumorphicStyle(
        depth: Dimens.depth,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      padding: EdgeInsets.all(_padding),
      margin: _marginLeft != null && _marginRight != null
          ? EdgeInsets.only(left: _marginLeft!.w, right: _marginRight!.w)
          : null,
      child: Icon(
        _icon,
        color: _iconColor,
      ),
      onPressed: () {
        _action();
      },
    );
  }
}
