import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_state.freezed.dart';

@freezed
class AsyncState<T> with _$AsyncState<T> {
  const factory AsyncState({
    T? value,
    Exception? exception,
    @Default(false) bool isLoading,
  }) = _AsyncState;
}
