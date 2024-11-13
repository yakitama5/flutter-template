import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cores_core/domain.dart';
import 'package:cores_core/presentation.dart';
import 'package:cores_core/util.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:store_redirect/store_redirect.dart';

import '../application/model/app_update_status.dart';
import '../application/state/app_update_status_provider.dart';

class AppUpdateListner extends SingleChildStatelessWidget {
  const AppUpdateListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => Consumer(
        child: child,
        builder: (_, ref, child) {
          ref.listen(appUpdateStatusProvider, (_, snapshot) async {
            // 共通Widgetのため、呼び出し元によらずRootを利用する
            final rootContext = rootNavigatorKey.currentContext;
            if (!snapshot.hasValue ||
                rootContext == null ||
                !rootContext.mounted) {
              return;
            }

            final status = snapshot.value!;
            switch (status) {
              // TODO(yakitama5): アップデート時の振る舞いを定義
              case AppUpdateStatus.updateRequired:
                logger.i('updateRequired');

                final result = await showOkAlertDialog(context: rootContext);
                return switch (result) {
                  OkCancelResult.ok => navigateToStore(ref),
                  OkCancelResult.cancel => null,
                };
              case AppUpdateStatus.updatePossible:
                logger.i('updatePossible');

                await showOkBarrierDismissibleDialog(
                  rootContext,
                  okLabel: 'ストアへ',
                  onOk: () => navigateToStore(ref),
                );
              case AppUpdateStatus.usingLatest:
                // do nothing
                logger.i('usingLatest');
            }
          });

          return child ?? const SizedBox.shrink();
        },
      );

  /// ストアページへ遷移する.
  Future<void> navigateToStore(WidgetRef ref) async {
    final appBuildConfig = ref.read(appBuildConfigProvider);

    return StoreRedirect.redirect(
      androidAppId: appBuildConfig.packageName,
      iOSAppId: appBuildConfig.packageName,
    );
  }
}
