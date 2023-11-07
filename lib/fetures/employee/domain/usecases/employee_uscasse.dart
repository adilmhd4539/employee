import 'package:dartz/dartz.dart';
import 'package:employee__app/config/failure/failure.dart';
import 'package:employee__app/fetures/employee/domain/entites/employee_entity.dart';
import 'package:employee__app/fetures/employee/domain/repository/employee_repository.dart';

class EmployeeUseCase {
  final EmployeeRepository _employeeRepository;
  EmployeeUseCase(this._employeeRepository);
  Future<Either<Failure, EmployeeEntity>> addEmployee({
    required String name,
    required String role,
    required DateTime fromDt,
    required DateTime? toDt,
  }) {
    return _employeeRepository.addEmployee(
        name: name, role: role, fromDt: fromDt, toDt: toDt);
  }

  Future<Either<Failure, List<EmployeeEntity>>> getEmployees() {
    return _employeeRepository.getEmployees();
  }

  Future<Either<Failure, EmployeeEntity>> editEmployee(
      EmployeeEntity employee) {
    return _employeeRepository.editEmployee(employee);
  }

  Future<Either<Failure, bool>> deleteEmployee(int id) {
    return _employeeRepository.deleteEmployee(id);
  }
}
