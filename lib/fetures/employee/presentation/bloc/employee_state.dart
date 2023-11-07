part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState.initial() = _Initial;
  const factory EmployeeState.fetching() = _Fetching;
  const factory EmployeeState.fetchingError(String message) = _FetchingError;
  const factory EmployeeState.fetchingSucces(List<EmployeeEntity> employees) =
      _FetchingSucces;
  const factory EmployeeState.adding() = _Adding;
  const factory EmployeeState.editing() = _Editing;
  const factory EmployeeState.deleteing() = _Deleting;
}
