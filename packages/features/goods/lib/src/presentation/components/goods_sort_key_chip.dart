import 'package:cores_core/domain.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:features_goods/src/domain/value_object/goods_sort_key.dart';
import 'package:flutter/material.dart';

/// 並び替えを行うための`ActionChip`
class GoodsSortKeyChip extends StatelessWidget {
  const GoodsSortKeyChip(
      {super.key,
      required this.onChanged,
      required this.sortKey,
      required this.sortOrder});

  final ValueChanged<GoodsSortKey> onChanged;
  final GoodsSortKey sortKey;
  final SortOrder sortOrder;

  @override
  Widget build(BuildContext context) {
    return BottomSheetSelectActionChip<GoodsSortKey>(
      label: Text(sortKey.title),
      actions: GoodsSortKey.values
          .map((e) => BottomSheetAction(
                title: Text(e.title),
                icon: sortKey == e ? Icon(sortOrder.iconData) : null,
                value: e,
              ))
          .toList(),
      iconData: Icons.sort,
      title: Text(sortKey.title),
      initial: sortKey,
      onChanged: onChanged,
    );
  }
}
