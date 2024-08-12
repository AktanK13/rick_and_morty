import 'package:equatable/equatable.dart';

class InfoEntity extends Equatable {
  const InfoEntity({
    required this.count,
  });
  final int? count;

  @override
  List<Object?> get props => [count];
}
