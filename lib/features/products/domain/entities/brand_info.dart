import 'package:equatable/equatable.dart';

class BrandInfo extends Equatable {
  final String id;
  final String title;
  final String slug;
  final String icon;

  const BrandInfo({
    required this.id,
    required this.title,
    required this.slug,
    required this.icon,
  });

  @override
  List<Object?> get props => [id, title, slug, icon];
}
