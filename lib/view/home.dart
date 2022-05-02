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

  late final _modal = AppModal(context);

  void printa() {
    print("#");
  }

  void _showModal() {
    _modal.showModal();
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
                      left: Dimens.allHorizontalPadding.w,
                      top: 40.h,
                      right: Dimens.allHorizontalPadding.w,
                      bottom: 24.h,
                    ),
                    child: NeumorphicSearchField(onChange: printa),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                          return SizedBox(height: 8.h);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
      floatingActionButton: NeumorphicFloatingActionButton(
        child: Icon(Icons.add, size: 24.h, color: AppColors.mainColor),
        onPressed: () {
          _showModal();
        },
      ),
    );
  }
}
