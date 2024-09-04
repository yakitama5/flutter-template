import 'package:cores_designsystem/presentation.dart';
import 'package:features_sample_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';

enum ViewerLayoutType {
  list(Icons.list_rounded),
  grid(Icons.grid_view_rounded);

  const ViewerLayoutType(this.iconData);

  final IconData iconData;
}

extension ViewerLayoutTypeX on ViewerLayoutType {
  String get title => i18n.sampleList.viewerLayoutType(context: this);
}

class SampleListViewChip extends StatelessWidget {
  const SampleListViewChip({
    super.key,
    required this.viewerLayoutType,
    required this.onChanged,
  });

  final ViewerLayoutType viewerLayoutType;
  final ValueChanged<ViewerLayoutType> onChanged;

  @override
  Widget build(BuildContext context) {
    return BottomSheetSelectActionChip<ViewerLayoutType>(
      label: Text(i18n.sampleList.sampleListPage.viewerLayoutType),
      actions: ViewerLayoutType.values
          .map((e) => BottomSheetAction(
                title: Text(e.name),
                icon: Icon(e.iconData),
                value: e,
              ))
          .toList(),
      iconData: viewerLayoutType.iconData,
      title: Text(viewerLayoutType.title),
      initial: viewerLayoutType,
      onChanged: onChanged,
    );
  }
}
