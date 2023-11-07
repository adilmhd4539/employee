import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:employee__app/config/router/app_router.gr.dart';
import 'package:employee__app/fetures/employee/domain/entites/employee_entity.dart';
import 'package:employee__app/fetures/employee/domain/usecases/employee_uscasse.dart';
import 'package:employee__app/resources/app_theem_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../config/failure/failure.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final EmployeeUseCase _employeeUseCase;
  final GlobalKey<NavigatorState> _navigatorKey;
  EmployeeBloc(this._employeeUseCase, this._navigatorKey)
      : super(const _Initial()) {
    on<GetEmployees>(onGetEmployees);
    on<AddEmployee>(onAddEmployee);
    on<EditEmployee>(onEditEmployee);
    on<DeleteEmployee>(onDeleteEmployee);
  }
  FutureOr<void> onGetEmployees(
      GetEmployees event, Emitter<EmployeeState> emit) async {
    emit(const _Fetching());
    Either<Failure, List<EmployeeEntity>> getEmployeeOptions =
        await _employeeUseCase.getEmployees();
    getEmployeeOptions.fold(
        (error) => emit(_FetchingError(Failure.convertFailureToMessage(error))),
        (employees) => emit(_FetchingSucces(employees)));
  }

  FutureOr<void> onAddEmployee(
      AddEmployee event, Emitter<EmployeeState> emit) async {
    List<EmployeeEntity> employees = List.from(state.maybeWhen(
      orElse: () => [],
      fetchingSucces: (employees) => employees,
    ));
    emit(const _Adding());
    Either<Failure, EmployeeEntity> addingOptions =
        await _employeeUseCase.addEmployee(
            name: event.name,
            role: event.role,
            fromDt: event.fromDt,
            toDt: event.toDt);
    addingOptions.fold((failue) {
      _showSuccesSnackBar(
        'Employee added failed',
      );
      emit(_FetchingSucces(employees));
    }, (newEmployee) {
      _showSuccesSnackBar(
        'Employee added succesfully',
      );
      if (_navigatorKey.currentContext!.router.current.name ==
          EmployeeUpdateRoute.name) {
        _navigatorKey.currentContext!.popRoute();
      }
      employees.add(newEmployee);

      emit(_FetchingSucces(employees));
    });
  }

  FutureOr<void> onEditEmployee(
      EditEmployee event, Emitter<EmployeeState> emit) async {
    List<EmployeeEntity> employees = List.from(state.maybeWhen(
      orElse: () => [],
      fetchingSucces: (employees) => employees,
    ));
    emit(const _Editing());
    Either<Failure, EmployeeEntity> editingOptions =
        await _employeeUseCase.editEmployee(event.employee);
    editingOptions.fold((falure) {
      _showSuccesSnackBar(
        'Employee editing failed',
      );
      emit(_FetchingSucces(employees));
    }, (updatedEmployee) {
      _showSuccesSnackBar(
        'Employee edited succesfully',
      );
      if (_navigatorKey.currentContext!.router.current.name ==
          EmployeeUpdateRoute.name) {
        _navigatorKey.currentContext!.popRoute();
      }
      int updatedEmployeeIndex =
          employees.indexWhere((emp) => emp.id == event.employee.id);
      employees[updatedEmployeeIndex] = updatedEmployee;
      emit(_FetchingSucces(employees));
    });
  }

  FutureOr<void> onDeleteEmployee(
      DeleteEmployee event, Emitter<EmployeeState> emit) async {
    List<EmployeeEntity> employees = List.from(state.maybeWhen(
      orElse: () => [],
      fetchingSucces: (employees) => employees,
    ));
    emit(const _Deleting());
    Either<Failure, bool> deletingOptions =
        await _employeeUseCase.deleteEmployee(event.employee.id);
    deletingOptions.fold((failure) {
      _showSuccesSnackBar(
        'Employee deleting failed',
      );
      emit(_FetchingSucces(employees));
    }, (r) {
      _showSuccesSnackBar(
        'Employee data has been deleted',
        onPressed: () {
          _navigatorKey.currentContext!.read<EmployeeBloc>().add(AddEmployee(
              name: event.employee.name,
              role: event.employee.role,
              fromDt: event.employee.fromDt,
              toDt: event.employee.toDt));
        },
      );
      if (_navigatorKey.currentContext!.router.current.name ==
          EmployeeUpdateRoute.name) {
        _navigatorKey.currentContext!.popRoute();
      }
      employees.removeWhere((emp) => emp.id == event.employee.id);
      emit(_FetchingSucces(employees));
    });
  }

  _showSuccesSnackBar(
    String message, {
    VoidCallback? onPressed,
  }) {
    ScaffoldMessenger.of(_navigatorKey.currentContext!).clearSnackBars();
    ScaffoldMessenger.of(_navigatorKey.currentContext!).showSnackBar(SnackBar(
      backgroundColor: AppColors.textPrimary,
      content: Text(
        message,
        style: AppTextStyles.largeNormal.copyWith(
            fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.white),
      ),
      action: onPressed == null
          ? null
          : SnackBarAction(
              label: 'Undo',
              textColor: AppColors.primary,
              onPressed: onPressed,
            ),
    ));
  }
}
