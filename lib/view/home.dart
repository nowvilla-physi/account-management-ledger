import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  final List<Account> accounts;

  const HomePage({Key? key, required this.accounts}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final _accounts = widget.accounts;

  void printa() {
    print("#");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: _accounts.isEmpty
          ? const EmptyContainer(message: Strings.noDataMessage)
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: Dimens.allVerticalPadding.h),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      NeumorphicButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.favorite_border,
                          color: _iconsColor(context),
                        ),
                      ),
                      NeumorphicButton(
                          margin: EdgeInsets.only(top: 12),
                          onPressed: () {},
                          // style: NeumorphicStyle(
                          //   shape: NeumorphicShape.flat,
                          //   boxShape: NeumorphicBoxShape.roundRect(
                          //       BorderRadius.circular(8)),
                          // ),
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Toggle Theme",
                            style: TextStyle(color: AppColors.black),
                          )),
                    ],
                  ),
                ),
              ),
            ),
      floatingActionButton: NeumorphicFloatingActionButton(
        child: Icon(Icons.add, size: 24.h),
        onPressed: () {},
      ),
    );
  }

  Color? _iconsColor(BuildContext context) {
    final theme = NeumorphicTheme.of(context);
    if (theme?.isUsingDark == true) {
      return theme?.current?.accentColor;
    } else {
      return null;
    }
  }
}
