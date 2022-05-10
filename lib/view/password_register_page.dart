import 'package:account_management_ledger/component/neumorphic_auth_texts.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordRegisterPage extends ConsumerStatefulWidget {
  const PasswordRegisterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PasswordRegisterPage> createState() =>
      _PasswordRegisterPageState();
}

class _PasswordRegisterPageState extends ConsumerState<PasswordRegisterPage> {
  static const _prefsPasswordKey = 'passwordKey';
  static const _validPasswordLength = 4;

  /// パスワード
  String _password = '';

  late final _appSnackbar = AppSnackbar(context);

  @override
  initState() {
    super.initState();
    ref.read(authViewModelProvider.notifier).findPassword(_prefsPasswordKey);
  }

  /// パスワードをステートに保持する
  void _inputPassword(String text) {
    if (_password.length < _validPasswordLength) {
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

  /// パスワードを登録する
  void _registerPassword() {
    if (_password.length == _validPasswordLength) {
      ref
          .watch(authViewModelProvider.notifier)
          .savePassword(_prefsPasswordKey, _password);
    } else {
      _appSnackbar.showErrorSnackbar(Strings.invalidPasswordRegisterMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                SizedBox(height: Dimens.allVerticalPadding.h),
                Text(
                  Strings.passwordRegisterMessage,
                  style: TextStyle(color: AppColors.black, fontSize: 14.sp),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 32.h),
                  child: NeumorphicAuthTexts(
                    password: _password,
                    isRegister: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeumorphicAuthButton(number: '1', action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: '2', action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: '3', action: _inputPassword),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeumorphicAuthButton(number: '4', action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: '5', action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: '6', action: _inputPassword),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeumorphicAuthButton(number: '7', action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: '8', action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: '9', action: _inputPassword),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeumorphicAuthButton(
                        number: '0', action: _deletePassword, isVisible: false),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: '0', action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(
                      number: '×',
                      action: _deletePassword,
                      color: AppColors.red,
                    ),
                  ],
                ),
                SizedBox(height: Dimens.registerButtonMarginTop.h),
                SizedBox(
                  width: size.width * 0.6,
                  child: NeumorphicButton(
                    style: const NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.stadium(),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      Strings.registerButton,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      _registerPassword();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
