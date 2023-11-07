import 'package:dartz/dartz.dart';
import 'package:employee__app/config/failure/failure.dart';
import 'package:employee__app/fetures/employee/data/models/employee/employee_model.dart';
import 'package:employee__app/fetures/employee/domain/entites/employee_entity.dart';
import 'package:employee__app/fetures/employee/domain/repository/employee_repository.dart';

import '../data_source/employee_local_data_source.dart';

class EmployeeRepositoryImpl implements EmployeeRepository {
  final EpmloyeeLocalDataSource _epmloyeeLocalDataSource;
  EmployeeRepositoryImpl(this._epmloyeeLocalDataSource);
  @override
  Future<Either<Failure, EmployeeEntity>> addEmployee(
      {required String name,
      required String role,
      required DateTime fromDt,
      required DateTime? toDt}) async {
    try {
      final employee = await _epmloyeeLocalDataSource.addEmployee(
          name: name, role: role, fromDt: fromDt, toDt: toDt);
      return Right(EmployeeEntity.fromJson(employee.toJson()));
    } catch (e) {
      return const Left(Failure.dbError());
    }
  }

  @override
  Future<Either<Failure, bool>> deleteEmployee(int id) async {
    try {
      final response = await _epmloyeeLocalDataSource.deleteEmployee(id);
      return Right(response);
    } catch (e) {
      return const Left(Failure.dbError());
    }
  }

  @override
  Future<Either<Failure, EmployeeEntity>> editEmployee(
      EmployeeEntity employee) async {
    try {
      final updatedEmployee = await _epmloyeeLocalDataSource
          .editEmployee(EmployeeModel.fromJson(employee.toJson()));
      return Right(EmployeeEntity.fromJson(updatedEmployee.toJson()));
    } catch (e) {
      return const Left(Failure.dbError());
    }
  }

  @override
  Future<Either<Failure, List<EmployeeEntity>>> getEmployees() async {
    try {
      final response = await _epmloyeeLocalDataSource.getEmployees();
      List<EmployeeEntity> employees = [];
      for (final raw in response) {
        employees.add(EmployeeEntity.fromJson(raw.toJson()));
      }

      return Right(employees);
    } catch (e) {
      return const Left(Failure.dbError());
    }
  }
}
