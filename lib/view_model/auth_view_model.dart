import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:account_management_ledger/importer.dart';

class AuthViewModel extends StateNotifier<AuthUiState> {
  AuthViewModel({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthUiState.init());

  String? _password;

  final AuthRepository _authRepository;

  /// ロガー
  late final _logger = Logger(printer: AppLogPrinter('AuthViewModel'));

  /// 保存しているパスワードを取得する
  Future<void> findPassword(String key) async {
    final result = await _authRepository.read(key);

    result.when(
      success: (String? password) {
        // 取得したパスワードを保持する
        _password = password;
        if (password != null) {
          _logger.d('Password already registered.');
        } else {
          _logger.d('Password is not registered.');
          state = const AuthUiState.notRegister();
        }
      },
      failure: (Exception e) {
        state = AuthUiState.failure(e);
      },
    );
  }

  /// パスワードを保存する
  Future<void> savePassword(String key, String password) async {
    final result = await _authRepository.save(key, password);
    state = const AuthUiState.loading();

    result.when(
      success: (String password) {
        _password = password;
        _logger.d('Password successfully saved.');
        state = const AuthUiState.successRegister();
      },
      failure: (Exception e) {
        _logger.e('Failed to save password. $e');
        state = const AuthUiState.failure(AppError.failedRegisterAccount());
      },
    );
  }

  /// パスワードが等しいか判定する
  Future<void> validPassword(String inputtedPassword) async {
    state = const AuthUiState.loading();

    if (inputtedPassword == _password) {
      state = const AuthUiState.success();
    } else {
      state = const AuthUiState.init();
    }
  }
}
