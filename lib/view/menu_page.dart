import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuPage extends ConsumerStatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends ConsumerState<MenuPage> {
  static const _prefsDataKey = 'accountsKey';
  static const _prefsBackupKey = 'backupKey';

  late final _router = AppRouter(context);

  late final _appSnackbar = AppSnackbar(context);

  /// アカウントデータのバックアップをとる
  Future<void> _backup() async {
    ref.watch(homeViewModelProvider).maybeWhen(
      success: (List<Account> accounts) async {
        await ref.read(homeViewModelProvider.notifier).backup(_prefsBackupKey);
        _appSnackbar.showSuccessSnackbar(Strings.backupSuccessMessage);
      },
      orElse: () {
        _appSnackbar.showErrorSnackbar(Strings.noAccountBackupErrorMessage);
      },
    );
  }

  /// バックアップから復旧する
  Future<void> _restore() async {
    ref.watch(homeViewModelProvider).maybeWhen(
      success: (List<Account> accounts) async {
        await ref.read(homeViewModelProvider.notifier).restore(_prefsBackupKey);
        _appSnackbar.showSuccessSnackbar(Strings.restoreSuccessMessage);
      },
      orElse: () {
        _appSnackbar.showErrorSnackbar(Strings.noBackupRestoreErrorMessage);
      },
    );
  }

  /// 全てのアカウントを削除する
  Future<void> _clearAccounts() async {
    ref.watch(homeViewModelProvider).maybeWhen(
      success: (List<Account> accounts) async {
        await ref
            .read(homeViewModelProvider.notifier)
            .clearAllAccounts(_prefsDataKey, _prefsBackupKey);
        _router.toHome();
      },
      orElse: () {
        _appSnackbar.showErrorSnackbar(Strings.noAccountDeleteErrorMessage);
      },
    );
  }

  void _back() async {
    _router.back();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(homeViewModelProvider).maybeWhen(
      loading: () {
        return const OverlayLoading(message: Strings.menuLoadingMessage);
      },
      failure: (Exception e) {
        // TODO
        return const OverlayLoading();
      },
      orElse: () {
        return Scaffold(
          appBar: NeumorphicAppBar(
            title: Neumorphic(
              style: const NeumorphicStyle(
                depth: Dimens.embossDepth,
                boxShape: NeumorphicBoxShape.stadium(),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 8.h,
              ),
              child: Text(
                Strings.menuTitle,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: NeumorphicIconButton(
              icon: Icons.arrow_back,
              action: _back,
              marginLeft: Dimens.backButtonHorizontalMargin,
              marginRight: Dimens.backButtonHorizontalMargin,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.allHorizontalPadding.w,
            ),
            child: Column(
              children: <Widget>[
                MenuTile(
                  title: Strings.backupLabel,
                  info: Strings.backupInfoMessage,
                  confirmationMessage: Strings.backupMessage,
                  icon: Icons.save_alt,
                  action: _backup,
                ),
                SizedBox(height: Dimens.menuTilePaddingBottom.h),
                MenuTile(
                  title: Strings.restoreLabel,
                  info: Strings.restoreInfoMessage,
                  confirmationMessage: Strings.restoreMessage,
                  icon: Icons.restore,
                  action: _restore,
                ),
                SizedBox(height: Dimens.menuTilePaddingBottom.h),
                MenuTile(
                  title: Strings.allDeleteLabel,
                  info: Strings.allDeleteInfoMessage,
                  confirmationMessage: Strings.allDeleteMessage,
                  icon: Icons.delete,
                  action: _clearAccounts,
                  iconColor: AppColors.red,
                ),
                SizedBox(height: Dimens.menuTilePaddingBottom.h),
              ],
            ),
          ),
        );
      },
    );
  }
}
