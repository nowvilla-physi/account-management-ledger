import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'importer.dart';

void main() {
  /// 画面を縦に固定する
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const App());
}
