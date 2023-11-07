import 'package:intl/intl.dart';

import '../../../../config/failure/failure.dart';
import '../../../../resources/app_constants.dart';
import '../models/employee/employee_model.dart';
import 'dart:async';

import 'package:sqflite/sqflite.dart';

abstract class EpmloyeeLocalDataSource {
  Future<List<EmployeeModel>> getEmployees();
  Future<EmployeeModel> addEmployee({
    required String name,
    required String role,
    required DateTime fromDt,
    required DateTime? toDt,
  });
  Future<EmployeeModel> editEmployee(EmployeeModel employee);
  Future<bool> deleteEmployee(int id);
}

class EpmloyeeLocalDataSourceImpl implements EpmloyeeLocalDataSource {
  final Database _db;
  EpmloyeeLocalDataSourceImpl(this._db);
  @override
  Future<List<EmployeeModel>> getEmployees() async {
    try {
      final List<Map<String, dynamic>> response =
          await _db.query(TableNames.employee);
      List<EmployeeModel> employees = [];
      for (final raw in response) {
        employees.add(EmployeeModel.fromJson(raw));
      }
      return employees;
    } catch (e) {
      throw const Failure.dbError();
    }
  }

  @override
  Future<EmployeeModel> addEmployee({
    required String name,
    required String role,
    required DateTime fromDt,
    required DateTime? toDt,
  }) async {
    try {
      int id = await _db.insert(TableNames.employee, {
        'name': name,
        'role': role,
        'fromDt': DateFormat('yyyy-MM-dd').format(fromDt),
        'toDt': toDt == null ? null : DateFormat('yyyy-MM-dd').format(toDt)
      });
      return EmployeeModel(
          id: id, name: name, fromDt: fromDt, role: role, toDt: toDt);
    } catch (e) {
      throw const Failure.dbError();
    }
  }

  @override
  Future<bool> deleteEmployee(int id) async {
    try {
      await _db.delete(TableNames.employee, where: 'id=$id');
      return true;
    } catch (e) {
      throw const Failure.dbError();
    }
  }

  @override
  Future<EmployeeModel> editEmployee(EmployeeModel employee) async {
    try {
      await _db.update(
          TableNames.employee,
          {
            'name': employee.name,
            'role': employee.role,
            'fromDt': DateFormat('yyyy-MM-dd').format(employee.fromDt),
            'toDt': employee.toDt == null
                ? null
                : DateFormat('yyyy-MM-dd').format(employee.toDt!)
          },
          where: 'id=${employee.id}');
      return employee;
    } catch (e) {
      throw const Failure.dbError();
    }
  }
}
