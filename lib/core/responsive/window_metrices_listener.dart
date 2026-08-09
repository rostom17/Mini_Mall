import 'package:flutter/widgets.dart';

import '/core/constants/screen_size.dart';

class WindowMetricsListener extends StatefulWidget {
  const WindowMetricsListener({
    required this.child,
    this.onBreakpointChanged,
    super.key,
  });

  final Widget child;
  final ValueChanged<ScreenSize>? onBreakpointChanged;

  @override
  State<WindowMetricsListener> createState() => _WindowMetricsListenerState();
}

class _WindowMetricsListenerState extends State<WindowMetricsListener>
    with WidgetsBindingObserver {
  ScreenSize? _lastSize;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) => _checkBreakpoint());

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() => _checkBreakpoint();

  void _checkBreakpoint() {
    final view = WidgetsBinding.instance.platformDispatcher.views.first;
    final width = view.physicalSize.width / view.devicePixelRatio;
    final size = screenSizeByWidth(width);

    if (size != _lastSize) {
      _lastSize = size;
      widget.onBreakpointChanged?.call(size);
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
