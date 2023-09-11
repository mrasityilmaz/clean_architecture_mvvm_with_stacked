import 'package:intl/intl.dart';

final class DateFormatter {
  const DateFormatter._();
  static DateFormatter? _instace;
  DateFormatter get instance => _instace ??= const DateFormatter._();

  static String formatDayNameMonthNameDayHourMinute(DateTime dateTime) {
    return DateFormat('EEEE,  MMM d,  HH:mm').format(dateTime);
  }

  static String formatDayNameAndDay(DateTime dateTime) {
    return DateFormat('EEEE,  d').format(dateTime);
  }

  static String formatDateTime(DateTime dateTime) {
    return DateFormat('dd.MM.yyyy HH:mm').format(dateTime);
  }

  static String formatDate(DateTime dateTime) {
    return DateFormat('dd.MM.yyyy').format(dateTime);
  }

  static String formatTime(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  static String formatDuration(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, '0');
  }

  static String formatDurationToMinutes(Duration duration) {
    return duration.toString().split('.').first.padLeft(5, '0');
  }

  static String formatDurationToSeconds(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, '0');
  }

  static String formatDurationToMilliseconds(Duration duration) {
    return duration.toString().split('.').first.padLeft(11, '0');
  }

  static String formatDurationToMicroseconds(Duration duration) {
    return duration.toString().split('.').first.padLeft(14, '0');
  }

  static String formatDayOfWeekName(DateTime dateTime) {
    if (dateTime.day == DateTime.now().day && dateTime.month == DateTime.now().month && dateTime.year == DateTime.now().year) {
      return 'Today';
    } else if (dateTime.day == DateTime.now().subtract(const Duration(days: 1)).day && dateTime.month == DateTime.now().month && dateTime.year == DateTime.now().year) {
      return 'Yesterday';
    }
    return DateFormat('EEEE').format(dateTime);
  }
}
