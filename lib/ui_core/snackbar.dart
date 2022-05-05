import 'package:flutter/material.dart';
import 'package:account_management_ledger/importer.dart';

class AppSnackbar {
  final BuildContext context;

  const AppSnackbar(
    this.context, {
    Key? key,
  });

  /// クリップボードにコピーした際に表示する
  void showCopiedSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(Strings.copiedMessage, textAlign: TextAlign.center),
        backgroundColor: AppColors.mainColor,
        duration: Duration(milliseconds: Dimens.snackbarCopiedDurationMS),
      ),
    );
  }

  /// バックアップや復旧に成功した際に表示する
  void showSuccessSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, textAlign: TextAlign.center),
        backgroundColor: AppColors.mainColor,
        duration: const Duration(milliseconds: Dimens.snackbarVSuccessDurationMS),
      ),
    );
  }

  /// バリデーションにひっかかった際に表示する
  void showValidatedSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, textAlign: TextAlign.center),
        backgroundColor: AppColors.red,
        duration: const Duration(
          milliseconds: Dimens.snackbarValidatedDurationMS,
        ),
      ),
    );
  }

  /// エラー時の際に表示する
  void showErrorSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, textAlign: TextAlign.center),
        backgroundColor: AppColors.red,
        duration: const Duration(
          milliseconds: Dimens.snackbarErrorDurationMS,
        ),
      ),
    );
  }
}
