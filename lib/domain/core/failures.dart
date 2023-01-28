import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart'; 

@freezed
class Failures with _$Failures {
  factory Failures.notFound() = _NotFound;
  factory Failures.serverError() = _ServerError;
  factory Failures.generalError(String message) = _GeneralError;
}
