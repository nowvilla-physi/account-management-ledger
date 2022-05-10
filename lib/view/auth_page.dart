import 'package:account_management_ledger/component/neumorphic_auth_texts.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> {
  static const _prefsPasswordKey = 'passwordKey';

  /// パスワード
  String _password = '';

  /// ロガー
  late final _logger = Logger(printer: AppLogPrinter('AuthPage'));

  late final _router = AppRouter(context);

  late final _appSnackbar = AppSnackbar(context);

  @override
  initState() {
    super.initState();
    ref.read(authViewModelProvider.notifier).findPassword(_prefsPasswordKey);
  }

  /// パスワードをステートに保持する
  void _inputPassword(String text) {
    if (_password.length < 4) {
      setState(() {
        _password += text;
      });
    }
  }

  /// 入力したパスワードの末尾を一文字消す
  void _deletePassword(String text) {
    setState(() {
      if (_password.length > 1) {
        _password = _password.substring(0, _password.length - 1);
      } else {
        _password = '';
      }
    });
  }

  /// パスワードをクリアする
  void _clearPassword() {
    ref.watch(authViewModelProvider).maybeWhen(
      success: () {
        // nop
      },
      orElse: () {
        setState(() {
          _password = '';
        });
        _appSnackbar.showErrorSnackbar("パスワードの入力に誤りがあります。");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(authViewModelProvider).when(
      init: () {
        if (_password.length == 4) {
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            ref.read(authViewModelProvider.notifier).validPassword(_password);
            _clearPassword();
          });
        }
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.allHorizontalPadding.w,
                vertical: Dimens.allVerticalPadding.h,
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      Strings.appTitle,
                      style: TextStyle(color: AppColors.black, fontSize: 22.sp),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      Strings.authMessage,
                      style: TextStyle(color: AppColors.black, fontSize: 14.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32.h),
                      child: NeumorphicAuthTexts(password: _password),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        NeumorphicAuthButton(
                            number: "1", action: _inputPassword),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                            number: "2", action: _inputPassword),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                            number: "3", action: _inputPassword),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        NeumorphicAuthButton(
                            number: "4", action: _inputPassword),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                            number: "5", action: _inputPassword),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                            number: "6", action: _inputPassword),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        NeumorphicAuthButton(
                            number: "7", action: _inputPassword),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                            number: "8", action: _inputPassword),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                            number: "9", action: _inputPassword),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        NeumorphicAuthButton(
                            number: "0",
                            action: _deletePassword,
                            isVisible: false),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                            number: "0", action: _inputPassword),
                        SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                        NeumorphicAuthButton(
                          number: "×",
                          action: _deletePassword,
                          color: AppColors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      loading: () {
        return const OverlayLoading();
      },
      notRegister: () {
        return const PasswordRegisterPage();
      },
      success: () {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          _router.toHome();
        });
        return const OverlayLoading();
      },
      successRegister: () {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          _router.toHome();
        });
        return const OverlayLoading();
      },
      failure: (Exception e) {
        // TODO
        return const OverlayLoading();
      },
    );
  }
}
