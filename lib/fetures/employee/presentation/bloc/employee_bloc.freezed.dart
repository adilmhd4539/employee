// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(
            String name, String role, DateTime fromDt, DateTime? toDt)
        addEmployee,
    required TResult Function(EmployeeEntity employee) editEmployee,
    required TResult Function(EmployeeEntity employee) deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployees,
    TResult? Function(
            String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult? Function(EmployeeEntity employee)? editEmployee,
    TResult? Function(EmployeeEntity employee)? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult Function(EmployeeEntity employee)? editEmployee,
    TResult Function(EmployeeEntity employee)? deleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployees,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEmployeesImplCopyWith<$Res> {
  factory _$$GetEmployeesImplCopyWith(
          _$GetEmployeesImpl value, $Res Function(_$GetEmployeesImpl) then) =
      __$$GetEmployeesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmployeesImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$GetEmployeesImpl>
    implements _$$GetEmployeesImplCopyWith<$Res> {
  __$$GetEmployeesImplCopyWithImpl(
      _$GetEmployeesImpl _value, $Res Function(_$GetEmployeesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEmployeesImpl implements GetEmployees {
  const _$GetEmployeesImpl();

  @override
  String toString() {
    return 'EmployeeEvent.getEmployees()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEmployeesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(
            String name, String role, DateTime fromDt, DateTime? toDt)
        addEmployee,
    required TResult Function(EmployeeEntity employee) editEmployee,
    required TResult Function(EmployeeEntity employee) deleteEmployee,
  }) {
    return getEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployees,
    TResult? Function(
            String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult? Function(EmployeeEntity employee)? editEmployee,
    TResult? Function(EmployeeEntity employee)? deleteEmployee,
  }) {
    return getEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult Function(EmployeeEntity employee)? editEmployee,
    TResult Function(EmployeeEntity employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (getEmployees != null) {
      return getEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) {
    return getEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployees,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) {
    return getEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (getEmployees != null) {
      return getEmployees(this);
    }
    return orElse();
  }
}

abstract class GetEmployees implements EmployeeEvent {
  const factory GetEmployees() = _$GetEmployeesImpl;
}

/// @nodoc
abstract class _$$AddEmployeeImplCopyWith<$Res> {
  factory _$$AddEmployeeImplCopyWith(
          _$AddEmployeeImpl value, $Res Function(_$AddEmployeeImpl) then) =
      __$$AddEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String role, DateTime fromDt, DateTime? toDt});
}

/// @nodoc
class __$$AddEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$AddEmployeeImpl>
    implements _$$AddEmployeeImplCopyWith<$Res> {
  __$$AddEmployeeImplCopyWithImpl(
      _$AddEmployeeImpl _value, $Res Function(_$AddEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = null,
    Object? fromDt = null,
    Object? toDt = freezed,
  }) {
    return _then(_$AddEmployeeImpl(
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

class _$AddEmployeeImpl implements AddEmployee {
  const _$AddEmployeeImpl(
      {required this.name,
      required this.role,
      required this.fromDt,
      required this.toDt});

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
    return 'EmployeeEvent.addEmployee(name: $name, role: $role, fromDt: $fromDt, toDt: $toDt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmployeeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.fromDt, fromDt) || other.fromDt == fromDt) &&
            (identical(other.toDt, toDt) || other.toDt == toDt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, role, fromDt, toDt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      __$$AddEmployeeImplCopyWithImpl<_$AddEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(
            String name, String role, DateTime fromDt, DateTime? toDt)
        addEmployee,
    required TResult Function(EmployeeEntity employee) editEmployee,
    required TResult Function(EmployeeEntity employee) deleteEmployee,
  }) {
    return addEmployee(name, role, fromDt, toDt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployees,
    TResult? Function(
            String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult? Function(EmployeeEntity employee)? editEmployee,
    TResult? Function(EmployeeEntity employee)? deleteEmployee,
  }) {
    return addEmployee?.call(name, role, fromDt, toDt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult Function(EmployeeEntity employee)? editEmployee,
    TResult Function(EmployeeEntity employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(name, role, fromDt, toDt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) {
    return addEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployees,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) {
    return addEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(this);
    }
    return orElse();
  }
}

abstract class AddEmployee implements EmployeeEvent {
  const factory AddEmployee(
      {required final String name,
      required final String role,
      required final DateTime fromDt,
      required final DateTime? toDt}) = _$AddEmployeeImpl;

  String get name;
  String get role;
  DateTime get fromDt;
  DateTime? get toDt;
  @JsonKey(ignore: true)
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEmployeeImplCopyWith<$Res> {
  factory _$$EditEmployeeImplCopyWith(
          _$EditEmployeeImpl value, $Res Function(_$EditEmployeeImpl) then) =
      __$$EditEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeEntity employee});

  $EmployeeEntityCopyWith<$Res> get employee;
}

/// @nodoc
class __$$EditEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$EditEmployeeImpl>
    implements _$$EditEmployeeImplCopyWith<$Res> {
  __$$EditEmployeeImplCopyWithImpl(
      _$EditEmployeeImpl _value, $Res Function(_$EditEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$EditEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeEntityCopyWith<$Res> get employee {
    return $EmployeeEntityCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$EditEmployeeImpl implements EditEmployee {
  const _$EditEmployeeImpl({required this.employee});

  @override
  final EmployeeEntity employee;

  @override
  String toString() {
    return 'EmployeeEvent.editEmployee(employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
      __$$EditEmployeeImplCopyWithImpl<_$EditEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(
            String name, String role, DateTime fromDt, DateTime? toDt)
        addEmployee,
    required TResult Function(EmployeeEntity employee) editEmployee,
    required TResult Function(EmployeeEntity employee) deleteEmployee,
  }) {
    return editEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployees,
    TResult? Function(
            String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult? Function(EmployeeEntity employee)? editEmployee,
    TResult? Function(EmployeeEntity employee)? deleteEmployee,
  }) {
    return editEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult Function(EmployeeEntity employee)? editEmployee,
    TResult Function(EmployeeEntity employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) {
    return editEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployees,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) {
    return editEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(this);
    }
    return orElse();
  }
}

abstract class EditEmployee implements EmployeeEvent {
  const factory EditEmployee({required final EmployeeEntity employee}) =
      _$EditEmployeeImpl;

  EmployeeEntity get employee;
  @JsonKey(ignore: true)
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEmployeeImplCopyWith<$Res> {
  factory _$$DeleteEmployeeImplCopyWith(_$DeleteEmployeeImpl value,
          $Res Function(_$DeleteEmployeeImpl) then) =
      __$$DeleteEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeEntity employee});

  $EmployeeEntityCopyWith<$Res> get employee;
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$DeleteEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeEntityCopyWith<$Res> get employee {
    return $EmployeeEntityCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$DeleteEmployeeImpl implements DeleteEmployee {
  const _$DeleteEmployeeImpl({required this.employee});

  @override
  final EmployeeEntity employee;

  @override
  String toString() {
    return 'EmployeeEvent.deleteEmployee(employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      __$$DeleteEmployeeImplCopyWithImpl<_$DeleteEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployees,
    required TResult Function(
            String name, String role, DateTime fromDt, DateTime? toDt)
        addEmployee,
    required TResult Function(EmployeeEntity employee) editEmployee,
    required TResult Function(EmployeeEntity employee) deleteEmployee,
  }) {
    return deleteEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployees,
    TResult? Function(
            String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult? Function(EmployeeEntity employee)? editEmployee,
    TResult? Function(EmployeeEntity employee)? deleteEmployee,
  }) {
    return deleteEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployees,
    TResult Function(String name, String role, DateTime fromDt, DateTime? toDt)?
        addEmployee,
    TResult Function(EmployeeEntity employee)? editEmployee,
    TResult Function(EmployeeEntity employee)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployees,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployees,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployees,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class DeleteEmployee implements EmployeeEvent {
  const factory DeleteEmployee({required final EmployeeEntity employee}) =
      _$DeleteEmployeeImpl;

  EmployeeEntity get employee;
  @JsonKey(ignore: true)
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EmployeeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmployeeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchingImplCopyWith<$Res> {
  factory _$$FetchingImplCopyWith(
          _$FetchingImpl value, $Res Function(_$FetchingImpl) then) =
      __$$FetchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$FetchingImpl>
    implements _$$FetchingImplCopyWith<$Res> {
  __$$FetchingImplCopyWithImpl(
      _$FetchingImpl _value, $Res Function(_$FetchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchingImpl implements _Fetching {
  const _$FetchingImpl();

  @override
  String toString() {
    return 'EmployeeState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements EmployeeState {
  const factory _Fetching() = _$FetchingImpl;
}

/// @nodoc
abstract class _$$FetchingErrorImplCopyWith<$Res> {
  factory _$$FetchingErrorImplCopyWith(
          _$FetchingErrorImpl value, $Res Function(_$FetchingErrorImpl) then) =
      __$$FetchingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchingErrorImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$FetchingErrorImpl>
    implements _$$FetchingErrorImplCopyWith<$Res> {
  __$$FetchingErrorImplCopyWithImpl(
      _$FetchingErrorImpl _value, $Res Function(_$FetchingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchingErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchingErrorImpl implements _FetchingError {
  const _$FetchingErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EmployeeState.fetchingError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchingErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchingErrorImplCopyWith<_$FetchingErrorImpl> get copyWith =>
      __$$FetchingErrorImplCopyWithImpl<_$FetchingErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) {
    return fetchingError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) {
    return fetchingError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) {
    if (fetchingError != null) {
      return fetchingError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) {
    return fetchingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) {
    return fetchingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) {
    if (fetchingError != null) {
      return fetchingError(this);
    }
    return orElse();
  }
}

abstract class _FetchingError implements EmployeeState {
  const factory _FetchingError(final String message) = _$FetchingErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FetchingErrorImplCopyWith<_$FetchingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchingSuccesImplCopyWith<$Res> {
  factory _$$FetchingSuccesImplCopyWith(_$FetchingSuccesImpl value,
          $Res Function(_$FetchingSuccesImpl) then) =
      __$$FetchingSuccesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EmployeeEntity> employees});
}

/// @nodoc
class __$$FetchingSuccesImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$FetchingSuccesImpl>
    implements _$$FetchingSuccesImplCopyWith<$Res> {
  __$$FetchingSuccesImplCopyWithImpl(
      _$FetchingSuccesImpl _value, $Res Function(_$FetchingSuccesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$FetchingSuccesImpl(
      null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
    ));
  }
}

/// @nodoc

class _$FetchingSuccesImpl implements _FetchingSucces {
  const _$FetchingSuccesImpl(final List<EmployeeEntity> employees)
      : _employees = employees;

  final List<EmployeeEntity> _employees;
  @override
  List<EmployeeEntity> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeeState.fetchingSucces(employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchingSuccesImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchingSuccesImplCopyWith<_$FetchingSuccesImpl> get copyWith =>
      __$$FetchingSuccesImplCopyWithImpl<_$FetchingSuccesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) {
    return fetchingSucces(employees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) {
    return fetchingSucces?.call(employees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) {
    if (fetchingSucces != null) {
      return fetchingSucces(employees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) {
    return fetchingSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) {
    return fetchingSucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) {
    if (fetchingSucces != null) {
      return fetchingSucces(this);
    }
    return orElse();
  }
}

abstract class _FetchingSucces implements EmployeeState {
  const factory _FetchingSucces(final List<EmployeeEntity> employees) =
      _$FetchingSuccesImpl;

  List<EmployeeEntity> get employees;
  @JsonKey(ignore: true)
  _$$FetchingSuccesImplCopyWith<_$FetchingSuccesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddingImplCopyWith<$Res> {
  factory _$$AddingImplCopyWith(
          _$AddingImpl value, $Res Function(_$AddingImpl) then) =
      __$$AddingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddingImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$AddingImpl>
    implements _$$AddingImplCopyWith<$Res> {
  __$$AddingImplCopyWithImpl(
      _$AddingImpl _value, $Res Function(_$AddingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddingImpl implements _Adding {
  const _$AddingImpl();

  @override
  String toString() {
    return 'EmployeeState.adding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) {
    return adding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) {
    return adding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) {
    return adding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) {
    return adding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding(this);
    }
    return orElse();
  }
}

abstract class _Adding implements EmployeeState {
  const factory _Adding() = _$AddingImpl;
}

/// @nodoc
abstract class _$$EditingImplCopyWith<$Res> {
  factory _$$EditingImplCopyWith(
          _$EditingImpl value, $Res Function(_$EditingImpl) then) =
      __$$EditingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditingImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$EditingImpl>
    implements _$$EditingImplCopyWith<$Res> {
  __$$EditingImplCopyWithImpl(
      _$EditingImpl _value, $Res Function(_$EditingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditingImpl implements _Editing {
  const _$EditingImpl();

  @override
  String toString() {
    return 'EmployeeState.editing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements EmployeeState {
  const factory _Editing() = _$EditingImpl;
}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(
          _$DeletingImpl value, $Res Function(_$DeletingImpl) then) =
      __$$DeletingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$DeletingImpl>
    implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(
      _$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletingImpl implements _Deleting {
  const _$DeletingImpl();

  @override
  String toString() {
    return 'EmployeeState.deleteing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<EmployeeEntity> employees) fetchingSucces,
    required TResult Function() adding,
    required TResult Function() editing,
    required TResult Function() deleteing,
  }) {
    return deleteing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(String message)? fetchingError,
    TResult? Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult? Function()? adding,
    TResult? Function()? editing,
    TResult? Function()? deleteing,
  }) {
    return deleteing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(String message)? fetchingError,
    TResult Function(List<EmployeeEntity> employees)? fetchingSucces,
    TResult Function()? adding,
    TResult Function()? editing,
    TResult Function()? deleteing,
    required TResult orElse(),
  }) {
    if (deleteing != null) {
      return deleteing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchingError value) fetchingError,
    required TResult Function(_FetchingSucces value) fetchingSucces,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Editing value) editing,
    required TResult Function(_Deleting value) deleteing,
  }) {
    return deleteing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchingError value)? fetchingError,
    TResult? Function(_FetchingSucces value)? fetchingSucces,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Deleting value)? deleteing,
  }) {
    return deleteing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchingError value)? fetchingError,
    TResult Function(_FetchingSucces value)? fetchingSucces,
    TResult Function(_Adding value)? adding,
    TResult Function(_Editing value)? editing,
    TResult Function(_Deleting value)? deleteing,
    required TResult orElse(),
  }) {
    if (deleteing != null) {
      return deleteing(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements EmployeeState {
  const factory _Deleting() = _$DeletingImpl;
}
