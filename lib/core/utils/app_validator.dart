abstract class AppValidator {
  static String? validateCourseName(String? value) {
    if (value == null || value.toString().length <= 12) {
      return 'This Course name is required';
    }
    return null;
  }

  static String? validateCredits(String? value) {
    if (value == null || value.toString().length < 2) {
      return 'Credits Hours is required';
    }
    final intValue = int.tryParse(value);
    if (intValue == null || intValue < 1 || intValue > 6) {
      return 'Enter a number between 1 and 6';
    }

    return null;
  }
}
