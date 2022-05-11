import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'importer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ScreenUtilでレスポンシブ化を適用
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
        // NeumorphicThemeを適用
        theme: const NeumorphicThemeData(
          accentColor: AppColors.accentColor,
          baseColor: AppColors.baseColor,
          defaultTextColor: AppColors.black,
          variantColor: AppColors.mainColor,
          lightSource: LightSource.topLeft,
          shadowLightColorEmboss: AppColors.white,
          depth: Dimens.depth,
          intensity: 1,
        ),
        home: const HomePage(),
      ),
    );
  }
}
