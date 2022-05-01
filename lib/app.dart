import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'importer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = [
      Account("Twitter", "xxxxxx@gmail.com", "fdaskldasjf98"),
      Account("LINE", "xxxxxx@gmail.com", "fdaskldasjf98"),
      Account("Instagram", "xxxxxx@gmail.com", "fdaskldasjf98"),
      Account("Gmail", "xxxxxx@gmail.com", "fdaskldasjf98"),
    ];
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context) => NeumorphicApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        themeMode: ThemeMode.light,
        theme: const NeumorphicThemeData(
          // accentColor: AppColors.accentColor,
          baseColor: AppColors.baseColor,
          lightSource: LightSource.topLeft,
          depth: 4,
        ),
        home: HomePage(accounts: []),
      ),
    );
  }
}
