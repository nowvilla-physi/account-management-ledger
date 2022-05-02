import 'package:flutter/material.dart';
import 'package:account_management_ledger/importer.dart';

class AppSnackbar {
  final BuildContext context;

  const AppSnackbar(
    this.context, {
    Key? key,
  });

  void showCopiedSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(Strings.copiedMessage),
        backgroundColor: AppColors.mainColor,
        duration: Duration(milliseconds: Dimens.snackbarCopiedDurationMS),
      ),
    );
  }

  void showValidatedSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: AppColors.red,
        duration: const Duration(
          milliseconds: Dimens.snackbarValidatedDurationMS,
        ),
      ),
    );
  }
}
