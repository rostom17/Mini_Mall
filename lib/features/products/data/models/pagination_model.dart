class PaginationModel<T> {
  final List<T> items;
  final int total;
  final int? nextPageNo;
  final int? lastPageNo;

  const PaginationModel({
    required this.items,
    required this.total,
    required this.nextPageNo,
    required this.lastPageNo,
  });

  bool get hasMore => nextPageNo != null || lastPageNo != null;

  factory PaginationModel.fromJson({
    required Map<String, dynamic> json,
    required String itemKey,
    required T Function(Map<String, dynamic>) fromJsonT,
  }) {
    return PaginationModel(
      items: (json[itemKey] as List)
          .cast<Map<String, dynamic>>()
          .map(fromJsonT)
          .toList(),
      total: json["total"],
      nextPageNo: json["next"],
      lastPageNo: json["last_page"],
    );
  }
}
