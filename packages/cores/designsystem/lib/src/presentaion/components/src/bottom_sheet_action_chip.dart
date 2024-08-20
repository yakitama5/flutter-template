import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'chips.dart';
import 'model/bottom_sheet_action.dart';

class BottomSheetSelectActionChip<T> extends StatelessWidget {
  const BottomSheetSelectActionChip({
    super.key,
    required this.label,
    required this.iconData,
    required this.title,
    this.onChanged,
    this.initial,
    required this.actions,
  });

  final Widget label;
  final IconData iconData;
  final String title;
  final void Function(T value)? onChanged;
  final T? initial;
  final List<BottomSheetAction<T>> actions;

  void _handleTap(T value) {
    if (onChanged == null) {
      return;
    }

    return onChanged!(value);
  }

  @override
  Widget build(BuildContext context) {
    return LeadingIconInputChip(
      label: label,
      iconData: iconData,
      onPressed: () async {
        // BottomSheetの表示
        await showModalBottomSheet(
          context: context,
          builder: (context) {
            return _BottomSheetColumn(
              children: [
                ListTile(
                  title: Text('並び替え'),
                ),
                Divider(),
                ...actions.map((a) => ListTile(
                      title: a.title,
                      leading: a.icon,
                      onTap: () => _handleTap(a.value),
                    )),
              ],
            );
          },
        );

        return;
      },
      // `itemOrder` は未選択がありえないので、`true`固定
      selected: true,
      showCheckmark: false,
    );
  }
}

class _BottomSheetColumn extends StatelessWidget {
  const _BottomSheetColumn({
    super.key,
    this.children,
    this.title,
  });

  final List<Widget>? children;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(8),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: title,
          ),
          ...[
            const Gap(8),
            if (children != null) ...children!,
          ],
        ],
      ),
    );
  }
}
