import 'package:account_management_ledger/component/neumorphic_auth_texts.dart';
import 'package:account_management_ledger/importer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> {
  String _password = '';

  late final _router = AppRouter(context);

  late final _appSnackbar = AppSnackbar(context);

  /// パスワードをステートに保持する
  void _inputPassword(String text) {
    setState(() {
      if (_password.length < 4) {
        _password += text;
      }
    });
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

  @override
  Widget build(BuildContext context) {
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
                    NeumorphicAuthButton(number: "1", action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: "2", action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: "3", action: _inputPassword),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeumorphicAuthButton(number: "4", action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: "5", action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: "6", action: _inputPassword),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeumorphicAuthButton(number: "7", action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: "8", action: _inputPassword),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: "9", action: _inputPassword),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NeumorphicAuthButton(
                        number: "0", action: _deletePassword, isVisible: false),
                    SizedBox(width: Dimens.authButtonHorizontalMargin.w),
                    NeumorphicAuthButton(number: "0", action: _inputPassword),
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
  }
}
