import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final defaultDateTimeFormatProvider = Provider.autoDispose<DateFormat>(
  (ref) => DateFormat('y年M月d日 H時mm分'),
);
