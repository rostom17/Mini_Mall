import 'breakpoints.dart';

/// <= 600 : comact
///
/// 601 - 840 : medium
///
/// 841 - 1200 : expanded
///
/// 1200 + : large
///
enum ScreenSize { compact, medium, expanded, large }

ScreenSize screenSizeByWidth(double width) {
  if (width <= Breakpoints.compact) return ScreenSize.compact;
  if (width <= Breakpoints.medium) return ScreenSize.medium;
  if (width <= Breakpoints.expanded) return ScreenSize.expanded;
  return ScreenSize.large;
}
