import 'package:auto_route/auto_route.dart';
import 'package:employee__app/config/router/app_router.gr.dart';
import 'package:employee__app/fetures/employee/domain/entites/employee_entity.dart';
import 'package:employee__app/resources/app_theem_constatnts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../bloc/employee_bloc.dart';
import '../widget/employee_tile.dart';

@RoutePage()
class EmployeeListScreen extends StatelessWidget {
  const EmployeeListScreen({super.key});
  void _onCreadButtonPressed(BuildContext context) {
    context.router.push(EmployeeUpdateRoute());
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EmployeeBloc>().add(const GetEmployees());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      body: BlocBuilder<EmployeeBloc, EmployeeState>(
        builder: (context, state) {
          return state.maybeWhen(
              fetchingError: (message) => Center(
                    child: Text(message),
                  ),
              fetching: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              fetchingSucces: (employees) => employees.isEmpty
                  ? SizedBox(
                      width: double.infinity,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: SvgPicture.asset(
                                  'assets/not_found_illustaration.svg'),
                            ),
                            Text(
                              'No employee records found',
                              style: AppTextStyles.extraLargeMedium,
                            ),
                          ]),
                    )
                  : _buildList(employees),
              orElse: () => const CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _onCreadButtonPressed(context);
        },
      ),
    );
  }

  Widget _buildList(List<EmployeeEntity> employees) {
    List<EmployeeEntity> currentEmployees = [];
    List<EmployeeEntity> pastEmployees = [];
    for (final employee in employees) {
      if (employee.toDt == null || employee.toDt!.isAfter(DateTime.now())) {
        currentEmployees.add(employee);
      } else {
        pastEmployees.add(employee);
      }
    }
    List<Widget> listChildren = [];
    if (currentEmployees.isNotEmpty) {
      listChildren.addAll([
        _buildSectionContainer('Current employees'),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => EmployeeTile(
                employee: currentEmployees[index], isCureentEmployee: true),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: currentEmployees.length)
      ]);
    }
    if (pastEmployees.isNotEmpty) {
      listChildren.addAll([
        _buildSectionContainer('Previous employees'),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => EmployeeTile(
                employee: pastEmployees[index], isCureentEmployee: false),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: pastEmployees.length)
      ]);
    }
    listChildren.add(Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.darkGray,
      child: Text(
        'Swipe left to delete',
        style: AppTextStyles.largeNormal
            .copyWith(fontSize: 15, color: AppColors.textSecondary),
      ),
    ));
    return ListView(
      children: listChildren,
    );
  }

  Container _buildSectionContainer(String text) {
    return Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.darkGray,
        child: Text(
          text,
          style: AppTextStyles.largeMedium.copyWith(color: AppColors.primary),
        ));
  }
}
