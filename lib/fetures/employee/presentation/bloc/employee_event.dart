part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.getEmployees() = GetEmployees;
  const factory EmployeeEvent.addEmployee(
      {required String name,
      required String role,
      required DateTime fromDt,
      required DateTime? toDt}) = AddEmployee;
  const factory EmployeeEvent.editEmployee({required EmployeeEntity employee}) =
      EditEmployee;
  const factory EmployeeEvent.deleteEmployee(
      {required EmployeeEntity employee}) = DeleteEmployee;
}
