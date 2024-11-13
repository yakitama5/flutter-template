import 'package:cores_designsystem/common_assets.dart';
import 'package:cores_designsystem/domain.dart';
import 'package:cores_designsystem/i18n.dart';
import 'package:features_setting/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/src/settings_radio_list_tile.dart';
import '../components/src/settings_radio_scaffold.dart';

class SettingsColorStylePage extends HookConsumerWidget {
  const SettingsColorStylePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDynamicColorSupported = ref.watch(
      dynamicColorSupportProviderProvider.select(
        (status) => switch (status) {
          DynamicColorSupportStatus.supported => true,
          DynamicColorSupportStatus.notSupported => false,
        },
      ),
    );
    final initialValue = ref.watch(colorStyleProvider);
    final selected = useState<ColorStyle?>(initialValue);

    // ダイナミックカラーが対象外の場合は除外する
    final values = ColorStyle.values.where(
      (e) => switch (e) {
        ColorStyle.dynamicColor => isDynamicColorSupported,
        _ => true,
      },
    );

    return SettingsRadioScaffold(
      title: i18n.settings.settingsPage.layout.colorTheme,
      tiles: values.map((colorStyle) {
        return SettingsRadioListTile<ColorStyle>(
          title: Text(
            designsystemI18n.designsystem.colorStyle(context: colorStyle),
          ),
          value: colorStyle,
          groupValue: selected.value,
          leading: switch (colorStyle) {
            ColorStyle.dynamicColor => const Icon(Icons.person),
            ColorStyle.systemColor => CommonAssets.images.logo.image(
                height: 24,
                width: 24,
              ),
            // 参考カラーを表示
            ColorStyle.blue ||
            ColorStyle.purple ||
            ColorStyle.green ||
            ColorStyle.red ||
            ColorStyle.pink ||
            ColorStyle.yellow ||
            ColorStyle.orange =>
              SizedBox(
                height: 24,
                width: 24,
                child: ColoredBox(
                  color: colorStyle.seedColor!,
                ),
              ),
          },
          onChanged: (value) {
            selected.value = colorStyle;
            ref.read(colorStyleProvider.notifier).update(colorStyle);
          },
        );
      }).toList(),
    );
  }
}
