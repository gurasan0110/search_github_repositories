import 'package:intl/intl.dart';
import 'package:search_github_repositories/gen/strings.g.dart';

DateFormat get updatedAtFormatter => DateFormat(t.updatedAtPattern);

NumberFormat get numberFormatter {
  final formatter = NumberFormat.compact();
  formatter.maximumFractionDigits = 1;
  return formatter;
}
