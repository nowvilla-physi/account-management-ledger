import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final _modal = AppModal(context);

  Future<void> _searchAccounts(String text) async {
    ref.read(homeViewModelProvider.notifier).searchAccounts(text);
  }

  void _showAddModal() {
    _modal.showModal(OpenType.add);
  }

  void _showUpdateModal() {
    _modal.showModal(OpenType.edit);
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(homeViewModelProvider).when(
      init: () {
        ref.watch(homeViewModelProvider.notifier).findAccounts();
        return const OverlayLoading();
      },
      loading: () {
        return const OverlayLoading();
      },
      noAccount: () {
        return const EmptyContainer(message: Strings.noDataMessage);
      },
      success: (List<Account> accounts) {
        return Scaffold(
          backgroundColor: NeumorphicTheme.baseColor(context),
          body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: Dimens.allHorizontalPadding.w,
                  top: 40.h,
                  right: Dimens.allHorizontalPadding.w,
                  bottom: 24.h,
                ),
                child: NeumorphicSearchField(onChange: _searchAccounts),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return AccountTile(
                        key: GlobalKey(),
                        account: accounts[index],
                      );
                    },
                    itemCount: accounts.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 8.h);
                    },
                  ),
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
          floatingActionButton: NeumorphicFloatingActionButton(
            style: const NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: Icon(Icons.add, size: 24.h, color: AppColors.mainColor),
            onPressed: () {
              _showAddModal();
            },
          ),
        );
      },
      failure: (AppError error) {
        // TODO
        return OverlayLoading();
      },
    );
  }
}
