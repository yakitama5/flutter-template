import 'package:cores_designsystem/src/presentaion/components/src/model/bottom_sheet_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class BottomSheetSelectActionChip<T> extends StatelessWidget {
  const BottomSheetSelectActionChip({
    super.key,
    required this.label,
    required this.iconData,
    required this.title,
    required this.items,
    required this.labelBuilder,
    this.iconBuilder,
    this.onChanged,
    this.initial,
    required this.actions,
  });

  final Widget label;
  final IconData iconData;
  final String title;
  final List<T> items;
  final String Function(T item) labelBuilder;
  final IconData? Function(T item)? iconBuilder;
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

        // final result = await showModalActionSheet<T>(
        //   context: context,
        //   title: title,
        //   message: '',
        //   actions: items
        //       .map(
        //         (e) => SheetAction<T>(
        //           key: e,
        //           label: labelBuilder(e),
        //           icon: iconBuilder == null ? null : iconBuilder!(e),
        //           isDefaultAction: initial == e,
        //           isDestructiveAction: initial == e,
        //         ),
        //       )
        //       .toList(),
        // );

        // // 反映
        // if (result != null && onChanged != null) {
        //   onChanged!(result);
        // }
      },
      // `itemOrder` は未選択がありえないので、`true`固定
      selected: true,
      showCheckmark: false,
    );
  }
}

class LeadingIconInputChip extends StatelessWidget {
  const LeadingIconInputChip({
    super.key,
    required this.label,
    required this.iconData,
    this.onPressed,
    this.selected = false,
    this.showCheckmark,
  });

  final Widget label;
  final IconData iconData;
  final VoidCallback? onPressed;
  final bool selected;
  final bool? showCheckmark;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Row(
        children: [
          label,
          const Gap(8),
          Icon(
            iconData,
            size: 18,
          ),
        ],
      ),
      onPressed: onPressed,
      showCheckmark: showCheckmark,
      selected: selected,
    );
  }
}

class _SingleSelectBottomSheet<T> extends HookWidget {
  const _SingleSelectBottomSheet({
    super.key,
    required this.initial,
    this.title,
  });

  // static Future<T?> show<T>(
  //   BuildContext context, {
  //   required T initial,
  //   Widget? title,
  // }) =>
  //     showModalBottomSheet<T>(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return showAdaptiveDialog(context: context, builder: builder);
  //         return _SingleSelectBottomSheet(
  //           initial: initial,
  //           title: title,
  //         );
  //       },
  //     );

  final T initial;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return _BottomSheetColumn(
      title: title,
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
