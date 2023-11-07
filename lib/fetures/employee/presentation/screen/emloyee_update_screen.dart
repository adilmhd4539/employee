import 'package:auto_route/auto_route.dart';
import 'package:employee__app/fetures/employee/domain/entites/employee_entity.dart';
import 'package:employee__app/fetures/employee/presentation/bloc/employee_bloc.dart';
import 'package:employee__app/fetures/employee/presentation/widget/to_date_calender.dart';
import 'package:employee__app/resources/app_theem_constatnts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widget/from_date_calender.dart';

@RoutePage()
class EmployeeUpdateScreen extends StatefulWidget {
  final EmployeeEntity? employee;
  const EmployeeUpdateScreen({super.key, this.employee});

  @override
  State<EmployeeUpdateScreen> createState() => _EmployeeUpdateScreenState();
}

class _EmployeeUpdateScreenState extends State<EmployeeUpdateScreen> {
  final List<String> _roles = [
    'Product Designer',
    'Flutter Developer',
    'QA Tester',
    'Product Owner'
  ];
  DateTime _fromDate = DateTime.now();
  DateTime? _toDt;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fromDtController =
      TextEditingController(text: 'Today');
  final TextEditingController _toDtController = TextEditingController();
  void _handleOnSelectRole() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (context) => ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            _roleController.text = _roles[index];
            context.popRoute();
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: Text(
              _roles[index],
              style: AppTextStyles.largeNormal,
            ),
          ),
        ),
        separatorBuilder: (context, index) => Container(
          height: 1,
          color: AppColors.borderGray,
        ),
        itemCount: _roles.length,
      ),
    );
  }

  void _handleOnCancel() {
    context.popRoute();
  }

  void _handleOnSubmit() {
    if (_formKey.currentState!.validate()) {
      context.read<EmployeeBloc>().state.maybeWhen(
          adding: () => null,
          deleteing: () => null,
          editing: () => null,
          orElse: () {
            if (widget.employee == null) {
              context.read<EmployeeBloc>().add(AddEmployee(
                  name: _nameController.text,
                  role: _roleController.text,
                  fromDt: _fromDate,
                  toDt: _toDt));
            } else {
              EmployeeEntity updatedEmployee = widget.employee!.copyWith(
                id: widget.employee!.id,
                fromDt: _fromDate,
                toDt: _toDt,
                name: _nameController.text,
                role: _roleController.text,
              );
              if (widget.employee != updatedEmployee) {
                context
                    .read<EmployeeBloc>()
                    .add(EditEmployee(employee: updatedEmployee));
              } else {
                context.router.pop();
              }
            }
          });
    }
  }

  void _handleOnToDtTapped() {
    showDialog(
        context: context,
        builder: (context) => ToDateCalender(
              onDateSelected: (selectedDate) {
                _toDt = selectedDate;
                if (selectedDate == null) {
                  _toDtController.text = '';
                } else {
                  _toDtController.text =
                      DateFormat('d MMM yyyy').format(selectedDate);
                }
              },
              selectedDate: _toDt,
              startDate: _fromDate,
            ));
  }

  String? _validateEmployeeName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter employee name';
    } else {
      return null;
    }
  }

  String? _validateRole(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please Select role';
    } else {
      return null;
    }
  }

  String? _validateToDt(String? value) {
    if (_toDt == null) {
      return null;
    } else {
      if (_toDt!.isBefore(_fromDate)) {
        return 'Select date after joining';
      } else if (isSameDay(_toDt, _fromDate)) {
        return 'Select date after joining';
      } else {
        return null;
      }
    }
  }

  void _handleOnFromDtTapped() {
    showDialog(
      context: context,
      builder: (context) => FromDateCalender(
        selectedDate: _fromDate,
        onDateSaved: (selectedDate) {
          if (selectedDate != _fromDate) {
            _fromDate = selectedDate;
            final today = DateTime.now();
            if (isSameDay(today, selectedDate)) {
              _fromDtController.text = 'Today';
            } else {
              _fromDtController.text =
                  DateFormat('d MMM yyyy').format(selectedDate);
            }
          }
        },
      ),
    );
  }

  void _handleOnDelete() {
    context.read<EmployeeBloc>().state.mapOrNull(
          fetchingSucces: (value) => context
              .read<EmployeeBloc>()
              .add(DeleteEmployee(employee: widget.employee!)),
        );
  }

  @override
  void initState() {
    if (widget.employee != null) {
      _nameController.text = widget.employee?.name ?? '';
      _roleController.text = widget.employee?.role ?? '';
      _fromDate = widget.employee?.fromDt ?? DateTime.now();
      _toDt = widget.employee?.toDt;
      if (widget.employee!.toDt == null) {
        _toDtController.text = '';
      } else {
        _toDtController.text =
            DateFormat('d MMM yyyy').format(widget.employee!.toDt!);
      }
      final today = DateTime.now();
      if (isSameDay(today, widget.employee!.fromDt)) {
        _fromDtController.text = 'Today';
      } else {
        _fromDtController.text =
            DateFormat('d MMM yyyy').format(widget.employee!.fromDt);
      }
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _roleController.dispose();
    _fromDtController.dispose();
    _toDtController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: widget.employee != null
            ? [
                IconButton(
                    onPressed: _handleOnDelete,
                    icon: const Icon(Icons.delete_outlined))
              ]
            : null,
        automaticallyImplyLeading: false,
        title: const Text('Add Employee Details'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          children: [
            TextFormField(
              validator: _validateEmployeeName,
              controller: _nameController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                  ),
                  labelText: 'Employee name'),
            ),
            const SizedBox(
              height: 23,
            ),
            TextFormField(
              controller: _roleController,
              readOnly: true,
              validator: _validateRole,
              onTap: _handleOnSelectRole,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.work_outline,
                  ),
                  suffixIcon: Icon(Icons.arrow_drop_down_rounded),
                  labelText: 'Select Role'),
            ),
            const SizedBox(
              height: 23,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _fromDtController,
                    onTap: _handleOnFromDtTapped,
                    readOnly: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.event_outlined,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.primary,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextFormField(
                    validator: _validateToDt,
                    readOnly: true,
                    onTap: _handleOnToDtTapped,
                    controller: _toDtController,
                    decoration: const InputDecoration(
                      labelText: 'No Date',
                      prefixIcon: Icon(
                        Icons.event_outlined,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(width: 2, color: AppColors.borderGray))),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(children: [
          const Spacer(),
          TextButton(
            onPressed: _handleOnCancel,
            child: const Text('Cancel'),
          ),
          const SizedBox(
            width: 16,
          ),
          ElevatedButton(
              onPressed: _handleOnSubmit,
              child: BlocBuilder<EmployeeBloc, EmployeeState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      adding: () => CircularProgressIndicator(
                            color: AppColors.white,
                          ),
                      orElse: () => const Text('Save'));
                },
              ))
        ]),
      ),
    );
  }
}
