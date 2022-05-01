import 'package:logger/logger.dart';

class AppLogPrinter extends LogPrinter {
  final String className;

  AppLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    return [('[$className]:(${event.level}) ${event.message}')];
  }
}
