import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_entity.freezed.dart';

@freezed
class InfoEntity with _$InfoEntity {
  const factory InfoEntity({
    required int count,
    required int pages,
  }) = _InfoEntity;
}