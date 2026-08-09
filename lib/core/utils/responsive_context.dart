import 'package:flutter/material.dart';

import '/core/constants/app_spacing.dart';
import '/core/constants/screen_size.dart';

/// Device Screen width info backed by [BuildContext],
/// It's not widgets local constraints
/// Used to determine Padding Value, Grid Column Count, Font Size, mostly single
/// value decission
///
/// `ResponsiveBuilder` doesn't have any relation with this extension

extension ResponsiveContext on BuildContext {
  ScreenSize get screenSize => screenSizeByWidth(MediaQuery.sizeOf(this).width);

  double get pagePaddingValue => responsive(
    compact: AppSpacing.md,
    medium: AppSpacing.lg,
    expanded: AppSpacing.xl,
    large: AppSpacing.xxl,
  );

  EdgeInsets get pageInsets => EdgeInsets.symmetric(
    horizontal: pagePaddingValue,
    vertical: AppSpacing.md,
  );

  int get gridColumn =>
      responsive(compact: 2, medium: 3, expanded: 4, large: 6);

  T responsive<T>({required T compact, T? medium, T? expanded, T? large}) {
    return switch (screenSize) {
      ScreenSize.compact => compact,
      ScreenSize.medium => medium ?? compact,
      ScreenSize.expanded => expanded ?? medium ?? compact,
      ScreenSize.large => large ?? expanded ?? medium ?? compact,
    };
  }
}
