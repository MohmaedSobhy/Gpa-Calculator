abstract class AppString {
  static const String calculate = 'Calculate';
  static const String gpaCalculator = 'GPA Calculator';
  static const String grade = 'Grades';
  static const String credits = 'Credits';
  static const String addCourse = 'Add Course';
  static const String courseName = 'Course Name';
  static const String semesterGpa = 'Semester Gpa';
  static const String comulativeGpa = 'Comulative GPA';
  static const String semesterCredits = 'Semester Credits';
  static const String currentGpa = 'Current GPA';
  static const String totalCredits = 'Total Credits';
  static List<String> grades = [
    'A+',
    'A',
    'B+',
    'B',
    'C+',
    'C',
    'D+',
    'D',
    'F'
  ];
  static Map<String, double> gradePoints = {
    'A+': 4,
    'A': 4,
    'B+': 3.33,
    'B': 3,
    'C+': 2.33,
    'C': 2,
    'D+': 1.3,
    'D': 1.0,
    'F': 0.0,
  };
}