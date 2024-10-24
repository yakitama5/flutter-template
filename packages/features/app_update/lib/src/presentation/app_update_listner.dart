import 'package:cores_core/util.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import '../application/model/app_update_status.dart';
import '../application/state/app_update_status_provider.dart';

class AppUpdateListner extends SingleChildStatelessWidget {
  const AppUpdateListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => Consumer(
        child: child,
        builder: (context, ref, child) {
          ref.listen(appUpdateStatusProvider, (_, snapshot) {
            if (!snapshot.hasValue) {
              return;
            }

            final status = snapshot.value!;
            switch (status) {
              // TODO(yakitama5): アップデート時の振る舞いを定義
              case AppUpdateStatus.updateRequired:
                logger.i('updateRequired');
              case AppUpdateStatus.updatePossible:
                logger.i('updatePossible');
              case AppUpdateStatus.usingLatest:
                logger.i('usingLatest');
            }
          });

          return child ?? const SizedBox.shrink();
        },
      );
}
