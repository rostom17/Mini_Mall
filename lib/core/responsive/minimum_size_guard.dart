import 'package:flutter/material.dart';

import '/core/constants/breakpoints.dart';

class MinimumSizeGuard extends StatelessWidget {
  const MinimumSizeGuard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= Breakpoints.minUsableWidth) {
          return child;
        }
        return const ColoredBox(
          color: Colors.black87,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Window too small to display this app.\nResize to continue.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
