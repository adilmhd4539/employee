import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_entity.freezed.dart';
part 'employee_entity.g.dart';

@freezed
class EmployeeEntity with _$EmployeeEntity {
  const factory EmployeeEntity({
    required int id,
    required String name,
    required String role,
    required DateTime fromDt,
    required DateTime? toDt,
  }) = _EmployeeEntity;

  factory EmployeeEntity.fromJson(Map<String, dynamic> json) =>
      _$EmployeeEntityFromJson(json);
}
