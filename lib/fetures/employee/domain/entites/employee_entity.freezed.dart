// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeEntity _$EmployeeEntityFromJson(Map<String, dynamic> json) {
  return _EmployeeEntity.fromJson(json);
}

/// @nodoc
mixin _$EmployeeEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime get fromDt => throw _privateConstructorUsedError;
  DateTime? get toDt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeEntityCopyWith<EmployeeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEntityCopyWith<$Res> {
  factory $EmployeeEntityCopyWith(
          EmployeeEntity value, $Res Function(EmployeeEntity) then) =
      _$EmployeeEntityCopyWithImpl<$Res, EmployeeEntity>;
  @useResult
  $Res call(
      {int id, String name, String role, DateTime fromDt, DateTime? toDt});
}

/// @nodoc
class _$EmployeeEntityCopyWithImpl<$Res, $Val extends EmployeeEntity>
    implements $EmployeeEntityCopyWith<$Res> {
  _$EmployeeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? fromDt = null,
    Object? toDt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      fromDt: null == fromDt
          ? _value.fromDt
          : fromDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDt: freezed == toDt
          ? _value.toDt
          : toDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeEntityImplCopyWith<$Res>
    implements $EmployeeEntityCopyWith<$Res> {
  factory _$$EmployeeEntityImplCopyWith(_$EmployeeEntityImpl value,
          $Res Function(_$EmployeeEntityImpl) then) =
      __$$EmployeeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String role, DateTime fromDt, DateTime? toDt});
}

/// @nodoc
class __$$EmployeeEntityImplCopyWithImpl<$Res>
    extends _$EmployeeEntityCopyWithImpl<$Res, _$EmployeeEntityImpl>
    implements _$$EmployeeEntityImplCopyWith<$Res> {
  __$$EmployeeEntityImplCopyWithImpl(
      _$EmployeeEntityImpl _value, $Res Function(_$EmployeeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? fromDt = null,
    Object? toDt = freezed,
  }) {
    return _then(_$EmployeeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      fromDt: null == fromDt
          ? _value.fromDt
          : fromDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDt: freezed == toDt
          ? _value.toDt
          : toDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeEntityImpl implements _EmployeeEntity {
  const _$EmployeeEntityImpl(
      {required this.id,
      required this.name,
      required this.role,
      required this.fromDt,
      required this.toDt});

  factory _$EmployeeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String role;
  @override
  final DateTime fromDt;
  @override
  final DateTime? toDt;

  @override
  String toString() {
    return 'EmployeeEntity(id: $id, name: $name, role: $role, fromDt: $fromDt, toDt: $toDt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.fromDt, fromDt) || other.fromDt == fromDt) &&
            (identical(other.toDt, toDt) || other.toDt == toDt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, role, fromDt, toDt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeEntityImplCopyWith<_$EmployeeEntityImpl> get copyWith =>
      __$$EmployeeEntityImplCopyWithImpl<_$EmployeeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeEntityImplToJson(
      this,
    );
  }
}

abstract class _EmployeeEntity implements EmployeeEntity {
  const factory _EmployeeEntity(
      {required final int id,
      required final String name,
      required final String role,
      required final DateTime fromDt,
      required final DateTime? toDt}) = _$EmployeeEntityImpl;

  factory _EmployeeEntity.fromJson(Map<String, dynamic> json) =
      _$EmployeeEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get role;
  @override
  DateTime get fromDt;
  @override
  DateTime? get toDt;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeEntityImplCopyWith<_$EmployeeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
