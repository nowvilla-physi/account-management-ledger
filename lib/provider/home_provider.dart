import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:account_management_ledger/importer.dart';

final homeRepositoryProvider = Provider<HomeRepository>(
  (ref) => HomeRepositoryImpl(),
);

final homeViewModelProvider = StateNotifierProvider<HomeViewModel, HomeUiState>(
  (ref) => HomeViewModel(
    homeRepository: ref.watch(homeRepositoryProvider),
  ),
);
