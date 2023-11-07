import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  static String convertFailureToMessage(Failure failure) {
    return failure.when(
      dbError: () => 'Somthing went wrong please try again',
    );
  }

  const factory Failure.dbError() = DbError;
}
