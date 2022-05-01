import 'package:flutter/material.dart';
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
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        theme: ThemeData(
          primarySwatch: AppMaterialColor.primary,
          scaffoldBackgroundColor: AppColors.baseColor,
        ),
        home: HomePage(accounts: []),
      ),
    );
  }
}
