import 'package:auto_route/auto_route.dart';
import 'package:employee__app/config/router/app_router.gr.dart';
import 'package:employee__app/fetures/employee/presentation/bloc/employee_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../resources/app_theem_constatnts.dart';
import '../../domain/entites/employee_entity.dart';

class EmployeeTile extends StatelessWidget {
  const EmployeeTile({
    super.key,
    required this.employee,
    required this.isCureentEmployee,
  });

  final EmployeeEntity employee;
  final bool isCureentEmployee;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(EmployeeUpdateRoute(employee: employee));
      },
      child: Dismissible(
        direction: DismissDirection.endToStart,
        background: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.centerRight,
            color: AppColors.orenge,
            child: Icon(
              Icons.delete_outline,
              color: AppColors.white,
            )),
        onDismissed: (direction) {
          context.read<EmployeeBloc>().add(DeleteEmployee(employee: employee));
        },
        key: ValueKey(employee.id),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                employee.name,
                style: AppTextStyles.largeMedium,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                employee.role,
                style: AppTextStyles.bodyLargeNormal
                    .copyWith(color: AppColors.textSecondary),
              ),
              const SizedBox(
                height: 6,
              ),
              isCureentEmployee
                  ? Text(
                      'From ${DateFormat('d MMM,yyyy').format(employee.fromDt)}',
                      style: AppTextStyles.bodyNormal
                          .copyWith(color: AppColors.textSecondary),
                    )
                  : Text(
                      '${DateFormat('d MMM,yyyy').format(employee.fromDt)}-${DateFormat('d MMM,yyyy').format(employee.toDt!)}',
                      style: AppTextStyles.bodyNormal
                          .copyWith(color: AppColors.textSecondary),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
