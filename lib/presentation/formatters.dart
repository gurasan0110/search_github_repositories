import 'package:intl/intl.dart';
import 'package:search_github_repositories/gen/strings.g.dart';

class Formatters {
  const Formatters._();

  static DateFormat get updatedAt => DateFormat(t.updatedAtPattern);

  static NumberFormat get number {
    final formatter = NumberFormat.compact();
    formatter.maximumFractionDigits = 1;
    return formatter;
  }
}
