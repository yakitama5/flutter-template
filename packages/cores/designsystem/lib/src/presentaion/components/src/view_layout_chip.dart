import 'package:cores_designsystem/domain.dart';
import 'package:cores_designsystem/i18n/strings.g.dart';
import 'package:cores_designsystem/presentation.dart';
import 'package:flutter/material.dart';

class ViewLayoutChip extends StatelessWidget {
  const ViewLayoutChip({
    super.key,
    required this.viewLayout,
    required this.onChanged,
  });

  final ViewLayout viewLayout;
  final ValueChanged<ViewLayout> onChanged;

  @override
  Widget build(BuildContext context) {
    return BottomSheetSelectActionChip<ViewLayout>(
      label: Text(i18n.designsystem.viewLayout.name),
      actions: ViewLayout.values
          .map((e) => BottomSheetAction(
                title: Text(e.title),
                icon: Icon(e.iconData),
                value: e,
              ))
          .toList(),
      iconData: viewLayout.iconData,
      title: Text(i18n.designsystem.viewLayout.name),
      initial: viewLayout,
      onChanged: onChanged,
    );
  }
}
