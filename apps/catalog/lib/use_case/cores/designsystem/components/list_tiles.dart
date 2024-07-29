import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'ListTile', type: ListTile)
Widget textListTile(BuildContext context) => ListTile(
      onTap: () {},
      title: Text(
        context.knobs.string(
          label: 'text',
          initialValue: 'text',
        ),
      ),
    );
