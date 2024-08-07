import 'package:cores_core/application.dart';

import '../components/snack_bar_manager.dart';

/// プレゼンテーション層用の共通処理 Mixin
mixin PresentationMixin {
  /// エラーハンドリングをラップした実行処理
  Future<void> execute({
    required Future<void> Function() action,
    String? successMessage,
  }) async {
    try {
      await action();
      if (successMessage != null) {
        SnackBarManager.showInfoSnackBar(successMessage);
      }
    } on AppException catch (e) {
      SnackBarManager.showErrorSnackBar(e.message);
    } on Exception catch (e) {
      SnackBarManager.showErrorSnackBar(e.toString());
    }
  }
}
