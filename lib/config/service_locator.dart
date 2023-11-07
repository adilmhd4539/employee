import 'package:employee__app/resources/db_services.dart';
import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';

import '../fetures/employee/data/data_source/employee_local_data_source.dart';
import '../fetures/employee/data/repository/employee_repository_impl.dart';
import '../fetures/employee/domain/repository/employee_repository.dart';
import '../fetures/employee/domain/usecases/employee_uscasse.dart';

final GetIt serviceLocator = GetIt.instance;
Future<void> initializeDependencices() async {
  serviceLocator.registerSingleton<Database>(await DbServices.db());
  serviceLocator.registerSingleton<EpmloyeeLocalDataSource>(
      EpmloyeeLocalDataSourceImpl(serviceLocator()));
  serviceLocator.registerSingleton<EmployeeRepository>(
      EmployeeRepositoryImpl(serviceLocator()));
  serviceLocator
      .registerSingleton<EmployeeUseCase>(EmployeeUseCase(serviceLocator()));
}
