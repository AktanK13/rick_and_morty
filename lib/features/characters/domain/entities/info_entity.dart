import 'package:equatable/equatable.dart';

class InfoEntity extends Equatable {
  const InfoEntity( {
    required this.count,
    required this.pages,
  });
  final int count;
  final int pages;

  @override
  List<Object?> get props => [count, pages];
}
