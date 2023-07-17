// class DataState<T> {
//   const DataState({this.data, this.error});
//   factory DataState.success(T data) => DataState(data: data);
//   factory DataState.error(ErrorState error) => DataState(error: error);

//   final T? data;
//   final ErrorState? error;
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

class ErrorState {
  const ErrorState({required this.code, required this.message});

  final int code;
  final String message;
}

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.success(T data) = Success;
  const factory DataState.error(ErrorState error) = Error;
}
