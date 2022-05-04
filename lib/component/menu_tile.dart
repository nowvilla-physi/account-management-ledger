import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:account_management_ledger/importer.dart';

class MenuTile extends StatefulWidget {
  final String title;
  final String info;
  final IconData icon;
  final Function action;
  final Color? iconColor;

  const MenuTile({
    Key? key,
    required this.title,
    required this.info,
    required this.icon,
    required this.action,
    this.iconColor,
  }) : super(key: key);

  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  /// タイトル
  late final _title = widget.title;

  /// サブタイトル
  late final _info = widget.info;

  /// アイコン
  late final _icon = widget.icon;

  /// タップイベント
  late final _action = widget.action;

  /// アイコンの色
  late final _iconColor = widget.iconColor ?? AppColors.mainColor;

  late final _router = AppRouter(context);

  /// メニューのヒントダイアログを表示する
  Future<void> _showHintDialog() async {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text(Strings.hintLabel),
          content: Text(_info),
          actions: [
            CupertinoDialogAction(
              child: const Text(Strings.closeButton),
              onPressed: () {
                _router.back();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      style: const NeumorphicStyle(
        depth: Dimens.depth,
        color: AppColors.baseColor,
      ),
      child: ListTile(
        title: Text(_title),
        leading: NeumorphicIconButton(
          icon: _icon,
          action: _showHintDialog,
          color: _iconColor,
        ),
        trailing: NeumorphicIconButton(
          icon: Icons.chevron_right,
          action: _action,
          color: _iconColor,
        ),
      ),
    );
  }
}
