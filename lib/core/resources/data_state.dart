import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.success(T data) = Success;
  const factory DataState.error(ErrorState error) = Error;
}

class ErrorState {
  const ErrorState({required this.code, required this.message});

  final int code;
  final String message;
}
