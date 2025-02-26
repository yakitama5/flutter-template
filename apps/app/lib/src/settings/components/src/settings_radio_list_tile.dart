import 'package:flutter/material.dart';

class SettingsRadioListTile<T> extends StatelessWidget {
  const SettingsRadioListTile({
    super.key,
    this.leading,
    required this.title,
    required this.value,
    required this.groupValue,
    this.onChanged,
  });

  final Widget? leading;
  final Text title;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) => RadioListTile.adaptive(
        title: Row(
          children: [
            if (leading != null)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 16),
                child: leading,
              ),
            title,
          ],
        ),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        controlAffinity: ListTileControlAffinity.trailing,
        useCupertinoCheckmarkStyle: true,
      );
}
