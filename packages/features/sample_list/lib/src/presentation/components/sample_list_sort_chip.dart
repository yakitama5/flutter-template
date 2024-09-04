import 'package:cores_core/domain.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:features_sample_list/src/domain/value_object/sample_list_sort_key.dart';
import 'package:flutter/material.dart';

/// 並び替えを行うための`ActionChip`
class SampleListSortChip extends StatelessWidget {
  const SampleListSortChip(
      {super.key,
      required this.onChanged,
      required this.sortKey,
      required this.sortOrder});

  final ValueChanged<SampleListSortKey> onChanged;
  final SampleListSortKey sortKey;
  final SortOrder sortOrder;

  @override
  Widget build(BuildContext context) {
    return BottomSheetSelectActionChip<SampleListSortKey>(
      label: Text(sortKey.title),
      actions: SampleListSortKey.values
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
