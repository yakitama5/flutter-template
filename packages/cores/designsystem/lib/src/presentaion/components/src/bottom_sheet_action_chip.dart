import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'chips.dart';
import 'model/bottom_sheet_action.dart';

class BottomSheetSelectActionChip<T> extends StatelessWidget {
  const BottomSheetSelectActionChip({
    super.key,
    required this.label,
    required this.iconData,
    this.title,
    this.onChanged,
    this.initial,
    required this.actions,
  });

  /// Chip Property
  final Widget label;
  final IconData iconData;

  /// BottomSheet Property
  final Widget? title;
  final void Function(T value)? onChanged;
  final T? initial;
  final List<BottomSheetAction<T>> actions;

  @override
  Widget build(BuildContext context) {
    return LeadingIconInputChip(
      label: label,
      iconData: iconData,
      onPressed: () async {
        // BottomSheetの表示
        await showModalBottomSheet(
          context: context,
          builder: (context) => _BottomSheet(
            title: title,
            actions: actions,
            onChanged: onChanged,
          ),
        );

        return;
      },
      // `itemOrder` は未選択がありえないので、`true`固定
      selected: true,
      showCheckmark: false,
    );
  }
}

class _BottomSheet<T> extends StatelessWidget {
  const _BottomSheet({
    required this.actions,
    this.onChanged,
    this.title,
  });

  final Widget? title;
  final List<BottomSheetAction<T>> actions;
  final void Function(T value)? onChanged;

  void _handleTap(T value) {
    if (onChanged == null) {
      return;
    }

    return onChanged!(value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(8),
          ...[
            ListTile(
              title: title,
            ),
            Divider(),
            ...actions.map((a) => ListTile(
                  title: a.title,
                  leading: a.icon,
                  onTap: () => _handleTap(a.value),
                )),
          ],
        ],
      ),
    );
  }
}
