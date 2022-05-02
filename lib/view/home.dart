import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:uuid/uuid.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  /// Uuidオブジェクト
  final _uuid = const Uuid();

  /// サービス
  String _service = '';

  /// ID
  String _id = '';

  /// パスワード
  String _password = '';

  /// サービスを保持する
  void _setService(String service) {
    setState(() {
      _service = service;
    });
  }

  /// Idを保持する
  void _setId(String id) {
    setState(() {
      _id = id;
    });
  }

  /// サービスを保持する
  void _setPassword(String password) {
    setState(() {
      _password = password;
    });
  }

  /// アカウントを追加する
  Future<void> _addAccounts() async {
    await ref
        .read(homeViewModelProvider.notifier)
        .addAccount(_uuid.v4(), _service, _id, _password);
    _dismiss();
  }

  /// アカウントを更新する
  Future<void> _updateAccount(String uuid) async {
    await ref
        .read(homeViewModelProvider.notifier)
        .updateAccount(uuid, _service, _id, _password);
    _dismiss();
  }

  /// アカウントを削除する
  Future<void> _deleteAccount(String uuid) async {
    await ref.read(homeViewModelProvider.notifier).deleteAccount(uuid);
    _dismiss();
  }

  /// アカウントを検索する
  void _searchAccounts(String text) {
    ref.read(homeViewModelProvider.notifier).searchAccounts(text);
  }

  /// FloatingActionButtonを生成する
  Widget _createFloatingActionButton() {
    return NeumorphicFloatingActionButton(
      style: const NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Icon(Icons.add, size: 24.h, color: AppColors.mainColor),
      onPressed: () {
        _showModal(OpenType.add);
      },
    );
  }

  /// [type]に応じたボトムシートを表示する
  void _showModal(OpenType type, [Account? account]) {
    showCupertinoModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          body: Neumorphic(
            child: Container(
              color: AppColors.baseColor,
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.formFieldHorizontalPadding.w,
                vertical: Dimens.bottomSheetVerticalPadding.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  NeumorphicButton(
                    style: const NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.mainColor,
                    ),
                    onPressed: () {
                      _dismiss();
                    },
                  ),
                  SizedBox(height: 16.h),
                  NeumorphicTextField(
                    label: Strings.serviceLabel,
                    icon: Icons.local_offer,
                    onChange: _setService,
                    initialValue: account?.service,
                  ),
                  SizedBox(height: 8.h),
                  NeumorphicTextField(
                    label: Strings.idLabel,
                    icon: Icons.face,
                    onChange: _setId,
                    initialValue: account?.id,
                  ),
                  SizedBox(height: 8.h),
                  NeumorphicTextField(
                    label: Strings.passwordLabel,
                    icon: Icons.lock,
                    onChange: _setPassword,
                    initialValue: account?.password,
                  ),
                  SizedBox(height: 32.h),
                  Center(
                    child: _switchAppNeumorphicButton(type, account),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// [type]によって表示するボタンを切り替える
  Widget _switchAppNeumorphicButton(OpenType type, Account? account) {
    switch (type) {
      // 追加ボタンを表示する
      case OpenType.add:
        return AppNeumorphicButton(
          name: Strings.addButton,
          action: _addAccounts,
        );
      // 更新ボタンと削除ボタンを表示する
      case OpenType.edit:
        return Column(
          children: <Widget>[
            AppNeumorphicButton(
              name: Strings.updateButton,
              action: _updateAccount,
              account: account,
            ),
            SizedBox(height: 16.h),
            AppNeumorphicButton(
              name: Strings.deleteButton,
              action: _deleteAccount,
              account: account,
              color: AppColors.red,
            ),
          ],
        );
    }
  }

  /// ボトムシートを閉じる
  void _dismiss() {
    _setService('');
    _setId('');
    _setPassword('');
    Navigator.pop(context);
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
                        showModal: _showModal,
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
      failure: (Exception e) {
        // TODO
        return const OverlayLoading();
      },
    );
  }
}
