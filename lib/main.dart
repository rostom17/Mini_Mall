import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mini_mall/app/app.dart';

void main() {
  runApp(const ProviderScope(retry: null, child: MiniMall()));
}
