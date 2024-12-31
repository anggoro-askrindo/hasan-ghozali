import 'package:intl/intl.dart';

class DataUtil {
  DataUtil._();

  static String formatToIDR(double? value) {
    if (value != null) {
      final formatter = NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0);
      return formatter.format(value);
    } else {
      return '';
    }
  }

  static String dateToString(DateTime? date) {
    if (date != null) {
      return DateFormat('dd/MM/yyyy', 'id').format(date.toLocal());
    } else {
      return '';
    }
  }

  static bool isEmail(String? value) {
    if (value != null) {
      const pattern = r'^[^\s@]+@[^\s@]+\.[a-zA-Z]{2,}$';
      final regex = RegExp(pattern);
      return regex.hasMatch(value);
    } else {
      return false;
    }
  }

  static String removeLeadingZero(String value) {
    if (value.isNotEmpty && value[0] == '0') {
      final number = value.substring(1);
      return '62$number';
    } else if (value.isNotEmpty) {
      return '62$value';
    }
    return value;
  }
}
