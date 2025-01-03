import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const Result._();

  const factory Result({
    String? exception,
    T? value,
  }) = _Result;

  bool get hasException => exception != null;

  R map<R>({
    required R Function(String exception) exception,
    required R Function(T? value) value,
  }) {
    return hasException ? exception(this.exception!) : value(this.value);
  }
}
