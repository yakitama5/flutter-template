import 'package:cores_designsystem/extension.dart';
import 'package:cores_designsystem/i18n.dart';
import 'package:cores_designsystem/theme.dart';
import 'package:cores_domain/designsystem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/src/settings_radio_list_tile.dart';
import '../components/src/settings_radio_scaffold.dart';

class SettingsUiStylePage extends HookConsumerWidget {
  const SettingsUiStylePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialValue = ref.watch(uiStyleProvider);
    final selected = useState<UIStyle?>(initialValue);

    return SettingsRadioScaffold(
      title: i18n.settings.settingsPage.layout.uiStyle,
      tiles: UIStyle.values.map((style) {
        return SettingsRadioListTile<UIStyle>(
          title: Text(designsystemI18n.designsystem.uiStyle(context: style)),
          value: style,
          groupValue: selected.value,
          leading: Icon(style.iconData),
          onChanged: (_) {
            selected.value = style;
            ref.read(uiStyleProvider.notifier).update(style);
          },
        );
      }).toList(),
    );
  }
}
