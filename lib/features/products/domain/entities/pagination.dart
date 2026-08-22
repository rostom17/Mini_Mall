import 'package:equatable/equatable.dart';

class Pagination<T> extends Equatable {
  final List<T> items;
  final int total;
  final bool hasMore;

  const Pagination({
    required this.items,
    required this.total,
    required this.hasMore,
  });

  @override
  List<Object?> get props => [items, total, hasMore];
}
