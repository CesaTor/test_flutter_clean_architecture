abstract class DataState<T> {
  const DataState({this.data, this.error});

  final T? data;
  final ErrorState? error;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataError<T> extends DataState<T> {
  const DataError(ErrorState error) : super(error: error);
}

class ErrorState {
  const ErrorState(this.code, this.message);

  final int code;
  final String message;
}
