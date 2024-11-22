abstract class AppValidator {
  static String? validateCourseName(String? value) {
    if (value == null || value.isEmpty) {
      return 'This Course name is required';
    } else if (value.toString().length >= 12 && value.toString().length <= 2) {
      return 'This Course name must be from 2 to 12 letter';
    }
    return null;
  }

  static String? validateCredits(String? value) {
    if (value == null || value.isNotEmpty.toString().length >= 7) {
      return 'Credits Hours is required';
    }
    final intValue = int.tryParse(value);
    if (intValue == null || intValue < 1 || intValue > 6) {
      return 'Enter a number between 1 and 6';
    }

    return null;
  }
}
