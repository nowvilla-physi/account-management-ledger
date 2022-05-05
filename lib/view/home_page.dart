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
  static const _prefsDataKey = 'accountsKey';

  /// Uuidオブジェクト
  final _uuid = const Uuid();

  /// サービス
  String _service = '';

  /// ID
  String _id = '';

  /// パスワード
  String _password = '';

  /// 検索文字列のコントローラ
  final _searchTextController = TextEditingController();

  /// サービスを保持する
  void _setService(String service) {
    _validateWhenAdd();
    setState(() {
      _service = service;
    });
  }

  /// Idを保持する
  void _setId(String id) {
    _validateWhenAdd();
    setState(() {
      _id = id;
    });
  }

  /// サービスを保持する
  void _setPassword(String password) {
    _validateWhenAdd();
    setState(() {
      _password = password;
    });
  }

  /// 検索文字列を保持する
  void _setSearchText(String text) {
    setState(() {
      _searchTextController.text = text;
    });
  }

  /// アカウントを追加する
  Future<void> _addAccounts() async {
    await ref
        .read(homeViewModelProvider.notifier)
        .addAccount(_prefsDataKey, _uuid.v4(), _service, _id, _password);
    _dismiss();
    _setSearchText('');
  }

  /// アカウントを更新する
  Future<void> _updateAccount(String uuid) async {
    await ref
        .read(homeViewModelProvider.notifier)
        .updateAccount(_prefsDataKey, uuid, _service, _id, _password);
    _dismiss();
    _setSearchText('');
  }

  /// アカウントを削除する
  Future<void> _deleteAccount(String uuid) async {
    await ref
        .read(homeViewModelProvider.notifier)
        .deleteAccount(_prefsDataKey, uuid);
    _dismiss();
    _setSearchText('');
  }

  /// アカウントを検索する
  void _searchAccounts(String text) {
    ref.read(homeViewModelProvider.notifier).searchAccounts(text);
  }

  /// アカウント追加時のバリデーションを行う
  Result<bool, String> _validateWhenAdd([Account? account]) {
    return ref
        .read(homeViewModelProvider.notifier)
        .validateWhenAdd(_service, _id, _password);
  }

  /// アカウント更新時のバリデーションを行う
  Result<bool, String> _validateWhenUpdate(Account preAccount) {
    return ref
        .read(homeViewModelProvider.notifier)
        .validateWhenUpdate(_service, _id, _password, preAccount);
  }

  /// [type]に応じたボトムシートを表示する
  void _showModal([OpenType type = OpenType.add, Account? account]) {
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
                  NeumorphicIconButton(
                    icon: Icons.close,
                    action: _dismiss,
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
          validate: _validateWhenAdd,
        );
      // 更新ボタンと削除ボタンを表示する
      case OpenType.edit:
        return Column(
          children: <Widget>[
            AppNeumorphicButton(
              name: Strings.updateButton,
              action: _updateAccount,
              account: account,
              validate: _validateWhenUpdate,
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
        // 画面初期表示時にアカウント一覧を取得する
        ref.watch(homeViewModelProvider.notifier).findAccounts(_prefsDataKey);
        return const OverlayLoading();
      },
      loading: () {
        return const OverlayLoading();
      },
      noAccount: () {
        return Scaffold(
          body: const EmptyContainer(message: Strings.noDataMessage),
          floatingActionButton: NeumorphicFloatingButton(
            icon: Icons.add,
            action: _showModal,
          ),
        );
      },
      success: (List<Account> accounts) {
        return Scaffold(
          appBar: NeumorphicAppBar(
            title: NeumorphicSearchField(
              controller: _searchTextController,
              onChange: _searchAccounts,
            ),
            padding: 0,
          ),
          backgroundColor: NeumorphicTheme.baseColor(context),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: Dimens.allHorizontalPadding.w,
                top: 0,
                right: Dimens.allHorizontalPadding.w,
                bottom: 24.h,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
          floatingActionButton: NeumorphicFloatingButton(
            icon: Icons.add,
            action: _showModal,
          ),
        );
      },
      failure: (Exception e) {
        // TODO
        return const OverlayLoading();
      },
    );
  }
}
