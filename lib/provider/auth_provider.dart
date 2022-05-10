import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:account_management_ledger/importer.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(),
);

final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthUiState>(
  (ref) => AuthViewModel(
    authRepository: ref.watch(authRepositoryProvider),
  ),
);
