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
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.allHorizontalPadding.w,
                    vertical: Dimens.allVerticalPadding.h,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 8.h),
                      NeumorphicSearchField(onChange: printa),
                      NeumorphicButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.favorite_border,
                        ),
                      ),
                      NeumorphicButton(
                          margin: EdgeInsets.only(top: 12),
                          onPressed: () {},
                          padding: const EdgeInsets.all(12.0),
                          child: const Text(
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
}
