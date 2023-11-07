// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeEntityImpl _$$EmployeeEntityImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      role: json['role'] as String,
      fromDt: DateTime.parse(json['fromDt'] as String),
      toDt:
          json['toDt'] == null ? null : DateTime.parse(json['toDt'] as String),
    );

Map<String, dynamic> _$$EmployeeEntityImplToJson(
        _$EmployeeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'fromDt': instance.fromDt.toIso8601String(),
      'toDt': instance.toDt?.toIso8601String(),
    };
