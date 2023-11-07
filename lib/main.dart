import 'package:employee__app/fetures/employee/presentation/bloc/employee_bloc.dart';
import 'package:employee__app/resources/app_theem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/router/app_router.dart';
import 'config/service_locator.dart';
import 'fetures/employee/domain/usecases/employee_uscasse.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EmployeeBloc(
              serviceLocator<EmployeeUseCase>(), _appRouter.navigatorKey),
        )
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        theme: AppTheme.appThemeData(),
      ),
    );
  }
}
