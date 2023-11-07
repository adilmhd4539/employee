import 'package:dartz/dartz.dart';

import '../../../../config/failure/failure.dart';
import '../entites/employee_entity.dart';

abstract class EmployeeRepository {
  Future<Either<Failure, List<EmployeeEntity>>> getEmployees();
  Future<Either<Failure, EmployeeEntity>> addEmployee({
    required String name,
    required String role,
    required DateTime fromDt,
    required DateTime? toDt,
  });
  Future<Either<Failure, EmployeeEntity>> editEmployee(EmployeeEntity employee);
  Future<Either<Failure, bool>> deleteEmployee(int id);
}
