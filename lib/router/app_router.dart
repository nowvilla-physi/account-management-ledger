import 'package:flutter/material.dart';
import 'package:account_management_ledger/importer.dart';

class AppRouter {
  final BuildContext context;

  AppRouter(this.context);

  /// メニュー画面に遷移する
  void toMenu() {
    _push(const MenuPage());
  }

  /// 前の画面に戻る
  void back() {
    Navigator.of(context).pop();
  }

  void _push(Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void _pushReplacement(Widget widget) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void _pushAndRemoveUntil(Widget widget) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget),
      (_) => false,
    );
  }
}
