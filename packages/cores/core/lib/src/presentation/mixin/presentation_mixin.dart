import 'package:flutter/material.dart';

import '../components/snack_bar_manager.dart';

/// プレゼンテーション層用の共通処理 Mixin
mixin PresentationMixin {
  /// エラーハンドリングをラップした実行処理
  Future<void> execute(
    BuildContext context, {
    required Future<void> Function() action,
    String? successMessage,
  }) async {
    try {
      await action();
      if (successMessage != null) {
        SnackBarManager.showInfoSnackBar(successMessage);
      }
    } on Exception catch (e) {
      SnackBarManager.showErrorSnackBar(e.toString());
    }
  }
}
