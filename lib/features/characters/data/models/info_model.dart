import 'package:rick_and_morty/features/characters/domain/entities/info_entity.dart';

class InfoModel extends InfoEntity {
  const InfoModel(
      {required super.count,});

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return InfoModel(
      count: json['count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
    };
  }
}
