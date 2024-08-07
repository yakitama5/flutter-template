import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class LoaderOverlay extends SingleChildStatelessWidget {
  const LoaderOverlay({super.key, super.child, required this.loading});

  final bool loading;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Stack(
      children: [
        child ?? const SizedBox.shrink(),
        if (loading)
          const ColoredBox(
            color: Colors.black54,
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
      ],
    );
  }
}
