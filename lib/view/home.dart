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
          : Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.w,
                      top: 40.h,
                      right: 24.w,
                      bottom: 8.h,
                    ),
                    child: NeumorphicSearchField(onChange: printa),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return AccountTile(
                            key: GlobalKey(),
                            account: _accounts[index],
                          );
                        },
                        itemCount: _accounts.length,
                        separatorBuilder: (context, index) {
                          return Divider(height: 8.h);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
      floatingActionButton: NeumorphicFloatingActionButton(
        child: Icon(Icons.add, size: 24.h),
        onPressed: () {},
      ),
    );
  }
}
