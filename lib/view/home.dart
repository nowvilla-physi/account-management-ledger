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

  /// アカウントを検索する
  Future<void> _searchAccounts(String text) async {
    ref.read(homeViewModelProvider.notifier).searchAccounts(text);
  }

  void _showAddModal() {
    _modal.showModal(OpenType.add);
  }

  void _showUpdateModal() {
    _modal.showModal(OpenType.edit);
  }

  /// FloatingActionButtonを生成する
  Widget _createFloatingActionButton() {
    return NeumorphicFloatingActionButton(
      style: const NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Icon(Icons.add, size: 24.h, color: AppColors.mainColor),
      onPressed: () {
        _showAddModal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(homeViewModelProvider).when(
      init: () {
        /// 画面初期表示時にアカウント一覧を取得する
        ref.watch(homeViewModelProvider.notifier).findAccounts();
        return const OverlayLoading();
      },
      loading: () {
        return const OverlayLoading();
      },
      noAccount: () {
        return Scaffold(
          body: const EmptyContainer(message: Strings.noDataMessage),
          floatingActionButton: _createFloatingActionButton(),
        );
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
          floatingActionButton: _createFloatingActionButton(),
        );
      },
      failure: (AppError error) {
        // TODO
        return OverlayLoading();
      },
    );
  }
}
