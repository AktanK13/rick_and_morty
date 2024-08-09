import 'package:rick_and_morty/features/characters/domain/entities/info_entity.dart';

class InfoModel extends InfoEntity {
  const InfoModel(
      {required super.count,
      required super.pages,
      required super.next,
      required super.prev});

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return InfoModel(
      count: json['count'],
      pages: json['pages'],
      next: json['next'],
      prev: json['prev'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'pages': pages,
      'next': next,
      'prev': prev,
    };
  }
}
