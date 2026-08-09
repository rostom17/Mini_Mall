import 'package:flutter/material.dart';

import '/core/constants/screen_size.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    required this.compact,
    this.medium,
    this.expanded,
    this.large,
    super.key,
  });

  final WidgetBuilder compact;
  final WidgetBuilder? medium;
  final WidgetBuilder? expanded;
  final WidgetBuilder? large;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = screenSizeByWidth(constraints.maxWidth);
        final ui = switch (size) {
          ScreenSize.compact => compact,
          ScreenSize.medium => medium ?? compact,
          ScreenSize.expanded => expanded ?? medium ?? compact,
          ScreenSize.large => large ?? expanded ?? medium ?? compact,
        };
        return ui(context);
      },
    );
  }
}
