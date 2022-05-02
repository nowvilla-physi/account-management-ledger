import 'package:flutter/material.dart';

class AppRouter {
  final BuildContext context;

  AppRouter(this.context);

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
